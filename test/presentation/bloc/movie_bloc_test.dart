import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_recommendations.dart';
import 'package:ditonton/domain/usecases/movie/get_now_playing_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_top_rated_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_status.dart';
import 'package:ditonton/domain/usecases/movie/remove_watchlist.dart';
import 'package:ditonton/domain/usecases/movie/save_watchlist.dart';
import 'package:ditonton/domain/usecases/movie/search_movies.dart';
import 'package:ditonton/presentation/bloc/movie/movie_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'movie_bloc_test.mocks.dart';

@GenerateMocks([
  GetNowPlayingMovies,
  GetPopularMovies,
  GetTopRatedMovies,
  GetMovieDetail,
  GetMovieRecommendations,
  GetWatchListStatus,
  SaveWatchlist,
  RemoveWatchlist,
  SearchMovies,
  GetWatchlistMovies,
])
void main() {
  late MovieBloc movieBloc;
  late MockGetNowPlayingMovies mockGetNowPlayingMovies;
  late MockGetPopularMovies mockGetPopularMovies;
  late MockGetTopRatedMovies mockGetTopRatedMovies;
  late MockGetMovieDetail mockGetMovieDetail;
  late MockGetMovieRecommendations mockGetMovieRecommendations;
  late MockGetWatchListStatus mockGetWatchListStatus;
  late MockSaveWatchlist mockSaveWatchlist;
  late MockRemoveWatchlist mockRemoveWatchlist;
  late MockSearchMovies mockSearchMovies;
  late MockGetWatchlistMovies mockGetWatchlistMovies;

  setUp(() {
    mockGetNowPlayingMovies = MockGetNowPlayingMovies();
    mockGetPopularMovies = MockGetPopularMovies();
    mockGetTopRatedMovies = MockGetTopRatedMovies();
    mockGetMovieDetail = MockGetMovieDetail();
    mockGetMovieRecommendations = MockGetMovieRecommendations();
    mockGetWatchListStatus = MockGetWatchListStatus();
    mockSaveWatchlist = MockSaveWatchlist();
    mockRemoveWatchlist = MockRemoveWatchlist();
    mockSearchMovies = MockSearchMovies();
    mockGetWatchlistMovies = MockGetWatchlistMovies();
    movieBloc = MovieBloc(
      mockGetMovieDetail,
      mockGetMovieRecommendations,
      mockGetWatchListStatus,
      mockSaveWatchlist,
      mockRemoveWatchlist,
      mockGetNowPlayingMovies,
      mockGetPopularMovies,
      mockGetTopRatedMovies,
      mockSearchMovies,
      mockGetWatchlistMovies,
    );
  });

  final tId = 1;
  final query = 'Marvel';

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    video: false,
    voteAverage: 1,
    voteCount: 1,
  );

  final tMovieList = <Movie>[tMovie];

  group('now playing movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get now playing movies from usecase',
      build: () {
        when(mockGetNowPlayingMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.movieNowPlayingFetch()),
      verify: (_) => verify(mockGetNowPlayingMovies.execute()),
    );

    blocTest<MovieBloc, MovieState>(
        'should change movie data when data is gotten successfully',
        build: () {
          when(mockGetNowPlayingMovies.execute())
              .thenAnswer((_) async => Right(tMovieList));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieNowPlayingFetch()),
        expect: () => [
              MovieState(movieStatus: RequestState.Loading),
              MovieState(
                  movieNowPlayingList: tMovieList,
                  movieStatus: RequestState.Loaded),
            ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetNowPlayingMovies.execute())
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieNowPlayingFetch()),
        expect: () => [
              MovieState(movieStatus: RequestState.Loading),
              MovieState(
                  movieStatus: RequestState.Error, message: 'Server failure')
            ]);
  });

  group('popular movies', () {
    test('initial state must be empty',
        () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get popular movies from usecase',
      build: () {
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.moviePopularFetch()),
      verify: (bloc) => verify(mockGetPopularMovies.execute()),
    );

    blocTest<MovieBloc, MovieState>(
        'should change popular movie data when data is gotten successfully',
        build: () {
          when(mockGetPopularMovies.execute())
              .thenAnswer((_) async => Right(tMovieList));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.moviePopularFetch()),
        expect: () => [
          MovieState(movieStatus: RequestState.Loading),
          MovieState(
              moviePopularList: tMovieList,
              movieStatus: RequestState.Loaded),
        ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetPopularMovies.execute())
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.moviePopularFetch()),
        expect: () => [
          MovieState(movieStatus: RequestState.Loading),
          MovieState(
              movieStatus: RequestState.Error, message: 'Server failure')
        ]);
  });

  group('top rated movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get top rated movies from usecase',
      build: () {
        when(mockGetTopRatedMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.movieTopRatedFetch()),
      verify: (bloc) => verify(mockGetTopRatedMovies.execute()),
    );

    blocTest<MovieBloc, MovieState>(
        'should change top rated movie data when data is gotten successfully',
        build: () {
          when(mockGetTopRatedMovies.execute())
              .thenAnswer((_) async => Right(tMovieList));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieTopRatedFetch()),
        expect: () => [
          MovieState(movieStatus: RequestState.Loading),
          MovieState(
              movieTopRatedList: tMovieList,
              movieStatus: RequestState.Loaded),
        ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetTopRatedMovies.execute())
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieTopRatedFetch()),
        expect: () => [
          MovieState(movieStatus: RequestState.Loading),
          MovieState(
              movieStatus: RequestState.Error, message: 'Server failure')
        ]);
  });

  group('movie detail & recommendation movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get movie detail & recommendation movies from usecase',
      build: () {
        when(mockGetMovieRecommendations.execute(tId))
            .thenAnswer((_) async => Right(tMovieList));
        when(mockGetMovieDetail.execute(tId))
            .thenAnswer((_) async => Right(testMovieDetail));
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.movieDetailFetch(id: tId)),
      verify: (bloc) {
        return [
          verify(mockGetMovieDetail.execute(tId)),
          verify(mockGetMovieRecommendations.execute(tId))
        ];
      },
    );

    blocTest<MovieBloc, MovieState>(
        'should change movie detail & recommendation data when data is gotten successfully',
        build: () {
          when(mockGetMovieDetail.execute(tId))
              .thenAnswer((_) async => Right(testMovieDetail));
          when(mockGetMovieRecommendations.execute(tId))
              .thenAnswer((_) async => Right(tMovieList));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieDetailFetch(id: tId)),
        expect: () => [
          MovieState(movieDetailStatus: RequestState.Loading),
          MovieState(
              movieDetail: testMovieDetail,
              movieRecommendationList: tMovieList,
              movieDetailStatus: RequestState.Loaded),
        ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetMovieDetail.execute(tId))
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          when(mockGetMovieRecommendations.execute(tId))
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieDetailFetch(id: tId)),
        expect: () => [
          MovieState(movieDetailStatus: RequestState.Loading),
          MovieState(
              movieDetailStatus: RequestState.Error)
        ]);
  });

  group('watchlist status movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get watchlist status movies from usecase',
      build: () {
        when(mockGetWatchListStatus.execute(tId))
            .thenAnswer((_) async => true);
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.movieWatchlistStatusLoad(id: tId)),
      verify: (bloc) => verify(mockGetWatchListStatus.execute(tId)),
    );

    blocTest<MovieBloc, MovieState>(
        'should change watchlist status movie data when data is gotten successfully',
        build: () {
          when(mockGetWatchListStatus.execute(tId))
              .thenAnswer((_) async => true);
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieWatchlistStatusLoad(id: tId)),
        expect: () => [
          MovieState(
              message: '',
              isAddedToWatchlist: false),
          MovieState(
              isAddedToWatchlist: true),
        ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetWatchListStatus.execute(tId))
              .thenAnswer((_) async => false);
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieWatchlistStatusLoad(id: tId)),
        expect: () => [
          MovieState(
              message: '',
              isAddedToWatchlist: false),
        ]);
  });

  group('save watchlist movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get save watchlist from usecase',
      build: () {
        when(mockSaveWatchlist.execute(testMovieDetail))
            .thenAnswer((_) async => Right('Added to watchlist'));
        when(mockGetWatchListStatus.execute(tId))
            .thenAnswer((_) async => true);
        return movieBloc;
      },
      act: (bloc) => bloc.add(
          MovieEvent.movieAddWatchlistPressed(movieDetail: testMovieDetail)),
      verify: (bloc) => verify(mockSaveWatchlist.execute(testMovieDetail)),
    );

    blocTest<MovieBloc, MovieState>(
      'should change watchlist movie data when data saved is successfully',
      build: () {
        when(mockSaveWatchlist.execute(testMovieDetail))
            .thenAnswer((_) async => Right('Added to watchlist'));
        when(mockGetWatchListStatus.execute(tId)).thenAnswer((_) async => true);
        return movieBloc;
      },
      act: (bloc) => bloc.add(
          MovieEvent.movieAddWatchlistPressed(movieDetail: testMovieDetail)),
      expect: () => [
        MovieState(message: 'Added to watchlist'),
        MovieState(message: ''),
        MovieState(message: '', isAddedToWatchlist: true),
      ],
    );

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockSaveWatchlist.execute(testMovieDetail))
              .thenAnswer((_) async => Left(DatabaseFailure('Failed to save')));
          when(mockGetWatchListStatus.execute(tId))
              .thenAnswer((_) async => true);
          return movieBloc;
        },
        act: (bloc) => bloc.add(
            MovieEvent.movieAddWatchlistPressed(movieDetail: testMovieDetail)),
        expect: () => [
          MovieState(message: 'Failed to save'),
          MovieState(message: ''),
          MovieState(message: '', isAddedToWatchlist: true),
            ]);
  });

  group('remove watchlist movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get remove watchlist from usecase',
      build: () {
        when(mockRemoveWatchlist.execute(testMovieDetail))
            .thenAnswer((_) async => Right('Removed from watchlist'));
        when(mockGetWatchListStatus.execute(tId))
            .thenAnswer((_) async => true);
        return movieBloc;
      },
      act: (bloc) => bloc.add(
          MovieEvent.movieRemoveFromWatchlistPressed(movieDetail: testMovieDetail)),
      verify: (bloc) => verify(mockRemoveWatchlist.execute(testMovieDetail)),
    );

    blocTest<MovieBloc, MovieState>(
      'should change watchlist movie data when remove data successfully',
      build: () {
        when(mockRemoveWatchlist.execute(testMovieDetail))
            .thenAnswer((_) async => Right('Removed from watchlist'));
        when(mockGetWatchListStatus.execute(tId))
            .thenAnswer((_) async => true);
        return movieBloc;
      },
      act: (bloc) => bloc.add(
          MovieEvent.movieRemoveFromWatchlistPressed(movieDetail: testMovieDetail)),
      expect: () => [
        MovieState(message: 'Removed from watchlist'),
        MovieState(message: ''),
        MovieState(message: '', isAddedToWatchlist: true),
      ],
    );

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockRemoveWatchlist.execute(testMovieDetail))
              .thenAnswer((_) async => Left(DatabaseFailure('Error Database')));
          when(mockGetWatchListStatus.execute(tId))
              .thenAnswer((_) async => true);
          return movieBloc;
        },
        act: (bloc) => bloc.add(
            MovieEvent.movieRemoveFromWatchlistPressed(movieDetail: testMovieDetail)),
        expect: () => [
          MovieState(message: 'Error Database'),
          MovieState(message: ''),
          MovieState(message: '', isAddedToWatchlist: true),
        ]);
  });

  group('search movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get movie search results from usecase',
      build: () {
        when(mockSearchMovies.execute(query))
            .thenAnswer((_) async => Right(tMovieList));
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.movieSearchFetch(query: query)),
      verify: (bloc) => verify(mockSearchMovies.execute(query)),
    );

    blocTest<MovieBloc, MovieState>(
        'should change movie search data when data is gotten successfully',
        build: () {
          when(mockSearchMovies.execute(query))
              .thenAnswer((_) async => Right(tMovieList));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieSearchFetch(query: query)),
        expect: () => [
          MovieState(movieSearchStatus: RequestState.Loading),
          MovieState(movieSearchStatus: RequestState.Loaded, movieList: tMovieList),
        ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockSearchMovies.execute(query))
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieSearchFetch(query: query)),
        expect: () => [
              MovieState(movieSearchStatus: RequestState.Loading),
              MovieState(
                  movieSearchStatus: RequestState.Error,
                  message: 'Server failure'),
            ]);
  });

  group('watchlist movies', () {
    test('initial state must be empty',
            () => expect(movieBloc.state, isA<MovieState>()));

    blocTest<MovieBloc, MovieState>(
      'Initial state should be empty',
      build: () => movieBloc,
      expect: () => <MovieState>[],
    );

    blocTest<MovieBloc, MovieState>(
      'should get watchlist movie search results from usecase',
      build: () {
        when(mockGetWatchlistMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return movieBloc;
      },
      act: (bloc) => bloc.add(MovieEvent.movieWatchlistFetch()),
      verify: (bloc) => verify(mockGetWatchlistMovies.execute()),
    );

    blocTest<MovieBloc, MovieState>(
        'should change watclist data when data is gotten successfully',
        build: () {
          when(mockGetWatchlistMovies.execute())
              .thenAnswer((_) async => Right(tMovieList));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieWatchlistFetch()),
        expect: () => [
              MovieState(movieSearchStatus: RequestState.Loading),
              MovieState(
                  movieSearchStatus: RequestState.Loaded,
                  movieList: tMovieList),
            ]);

    blocTest<MovieBloc, MovieState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetWatchlistMovies.execute()).thenAnswer(
              (_) async => Left(DatabaseFailure('Failed get watchlist')));
          return movieBloc;
        },
        act: (bloc) => bloc.add(MovieEvent.movieWatchlistFetch()),
        expect: () => [
              MovieState(movieSearchStatus: RequestState.Loading),
              MovieState(
                  movieSearchStatus: RequestState.Error,
                  message: 'Failed get watchlist'),
            ]);
  });
}




















