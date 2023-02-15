import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_now_playing_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_popular_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_top_rated_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_detail.dart';
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_recommendations.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_status_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/remove_watchlist_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/save_watchlist_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/search_tv_series.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'tv_series_bloc_test.mocks.dart';

@GenerateMocks([
  GetNowPlayingTvSeries,
  GetPopularTvSeries,
  GetTopRatedTvSeries,
  GetTvSeriesDetail,
  GetTvSeriesRecommendations,
  GetWatchlistStatusTvSeries,
  SaveWatchlistTvSeries,
  RemoveWatchlistTvSeries,
  SearchTvSeries,
  GetWatchlistTvSeries,
])
void main() {
  late TvSeriesBloc tvSeriesBloc;
  late MockGetNowPlayingTvSeries mockGetNowPlayingTvSeries;
  late MockGetPopularTvSeries mockGetPopularTvSeries;
  late MockGetTopRatedTvSeries mockGetTopRatedTvSeries;
  late MockGetTvSeriesDetail mockGetTvSeriesDetail;
  late MockGetTvSeriesRecommendations mockGetTvSeriesRecommendations;
  late MockGetWatchlistStatusTvSeries mockGetWatchlistStatusTvSeries;
  late MockSaveWatchlistTvSeries mockSaveWatchlistTvSeries;
  late MockRemoveWatchlistTvSeries mockRemoveWatchlistTvSeries;
  late MockSearchTvSeries mockSearchTvSeries;
  late MockGetWatchlistTvSeries mockGetWatchlistTvSeries;

  setUp(() {
    mockGetNowPlayingTvSeries = MockGetNowPlayingTvSeries();
    mockGetPopularTvSeries = MockGetPopularTvSeries();
    mockGetTopRatedTvSeries = MockGetTopRatedTvSeries();
    mockGetTvSeriesDetail = MockGetTvSeriesDetail();
    mockGetTvSeriesRecommendations = MockGetTvSeriesRecommendations();
    mockGetWatchlistStatusTvSeries = MockGetWatchlistStatusTvSeries();
    mockSaveWatchlistTvSeries = MockSaveWatchlistTvSeries();
    mockRemoveWatchlistTvSeries = MockRemoveWatchlistTvSeries();
    mockSearchTvSeries = MockSearchTvSeries();
    mockGetWatchlistTvSeries = MockGetWatchlistTvSeries();
    tvSeriesBloc = TvSeriesBloc(
        mockGetNowPlayingTvSeries,
        mockGetPopularTvSeries,
        mockGetTopRatedTvSeries,
        mockGetTvSeriesDetail,
        mockGetTvSeriesRecommendations,
        mockGetWatchlistStatusTvSeries,
        mockSaveWatchlistTvSeries,
        mockRemoveWatchlistTvSeries,
        mockSearchTvSeries,
        mockGetWatchlistTvSeries);
  });

  final tId = 1;
  final query = 'Marvel';

  final tTvSeries = TvSeries(id: 1,
      name: 'name',
      posterPath: 'posterPath',
      popularity: 8,
      backdropPath: 'backdropPath',
      voteAverage: 8,
      overview: 'overview',
      firstAirDate: 'firstAirDate',
      originCountry: ['a'],
      genreIds: [1],
      originalLanguage: 'originalLanguage',
      voteCount: 9,
      originalName: 'originalName');

  final tTvSeriesList = <TvSeries>[tTvSeries];

  group('now playing tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get now playing tv series from usecase',
      build: () {
        when(mockGetNowPlayingTvSeries.execute())
            .thenAnswer((_) async => Right(tTvSeriesList));
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesNowPlayingFetch()),
      verify: (_) => verify(mockGetNowPlayingTvSeries.execute()),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change tv series data when data is gotten successfully',
        build: () {
          when(mockGetNowPlayingTvSeries.execute())
              .thenAnswer((_) async => Right(tTvSeriesList));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesNowPlayingFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesNowPlayingList: tTvSeriesList,
              tvSeriesStatus: RequestState.Loaded),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetNowPlayingTvSeries.execute())
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesNowPlayingFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesStatus: RequestState.Error, message: 'Server failure')
        ]);
  });

  group('popular tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get popular tv series from usecase',
      build: () {
        when(mockGetPopularTvSeries.execute())
            .thenAnswer((_) async => Right(tTvSeriesList));
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesPopularFetch()),
      verify: (bloc) => verify(mockGetPopularTvSeries.execute()),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change popular tv series data when data is gotten successfully',
        build: () {
          when(mockGetPopularTvSeries.execute())
              .thenAnswer((_) async => Right(tTvSeriesList));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesPopularFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesPopularList: tTvSeriesList,
              tvSeriesStatus: RequestState.Loaded),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetPopularTvSeries.execute())
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesPopularFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesStatus: RequestState.Error, message: 'Server failure')
        ]);
  });

  group('top rated tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get top rated tv series from usecase',
      build: () {
        when(mockGetTopRatedTvSeries.execute())
            .thenAnswer((_) async => Right(tTvSeriesList));
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesTopRatedFetch()),
      verify: (bloc) => verify(mockGetTopRatedTvSeries.execute()),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change top rated tv series data when data is gotten successfully',
        build: () {
          when(mockGetTopRatedTvSeries.execute())
              .thenAnswer((_) async => Right(tTvSeriesList));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesTopRatedFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesTopRatedList: tTvSeriesList,
              tvSeriesStatus: RequestState.Loaded),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetTopRatedTvSeries.execute())
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesTopRatedFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesStatus: RequestState.Error, message: 'Server failure')
        ]);
  });

  group('tv series detail & recommendation tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get tv series detail & recommendation tv series from usecase',
      build: () {
        when(mockGetTvSeriesDetail.execute(tId))
            .thenAnswer((_) async => Right(testTvSeriesDetail));
        when(mockGetTvSeriesRecommendations.execute(tId))
            .thenAnswer((_) async => Right(testTvSeriesList));
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesDetailFetch(id: tId)),
      verify: (bloc) {
        return [
          verify(mockGetTvSeriesDetail.execute(tId)),
          verify(mockGetTvSeriesRecommendations.execute(tId))
        ];
      },
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change tv series detail & recommendation data when data is gotten successfully',
        build: () {
          when(mockGetTvSeriesDetail.execute(tId))
              .thenAnswer((_) async => Right(testTvSeriesDetail));
          when(mockGetTvSeriesRecommendations.execute(tId))
              .thenAnswer((_) async => Right(tTvSeriesList));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesDetailFetch(id: tId)),
        expect: () =>
        [
          TvSeriesState(tvSeriesDetailStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesDetail: testTvSeriesDetail,
              tvSeriesRecommendationList: tTvSeriesList,
              tvSeriesDetailStatus: RequestState.Loaded),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetTvSeriesDetail.execute(tId))
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          when(mockGetTvSeriesRecommendations.execute(tId))
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesDetailFetch(id: tId)),
        expect: () =>
        [
          TvSeriesState(tvSeriesDetailStatus: RequestState.Loading),
          TvSeriesState(tvSeriesDetailStatus: RequestState.Error)
        ]);
  });

  group('watchlist status tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get watchlist status tv series from usecase',
      build: () {
        when(mockGetWatchlistStatusTvSeries.execute(tId)).thenAnswer((_) async => true);
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesWatchlistStatusLoad(id: tId)),
      verify: (bloc) => verify(mockGetWatchlistStatusTvSeries.execute(tId)),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change watchlist status tv series data when data is gotten successfully',
        build: () {
          when(mockGetWatchlistStatusTvSeries.execute(tId))
              .thenAnswer((_) async => true);
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesWatchlistStatusLoad(id: tId)),
        expect: () =>
        [
          TvSeriesState(message: '', isAddedToWatchlist: false),
          TvSeriesState(isAddedToWatchlist: true),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetWatchlistStatusTvSeries.execute(tId))
              .thenAnswer((_) async => false);
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesWatchlistStatusLoad(id: tId)),
        expect: () =>
        [
          TvSeriesState(message: '', isAddedToWatchlist: false),
        ]);
  });

  group('save watchlist tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get save watchlist from usecase',
      build: () {
        when(mockSaveWatchlistTvSeries.execute(testTvSeriesDetail))
            .thenAnswer((_) async => Right('Added to watchlist'));
        when(mockGetWatchlistStatusTvSeries.execute(tId)).thenAnswer((_) async => true);
        return tvSeriesBloc;
      },
      act: (bloc) =>
          bloc.add(
              TvSeriesEvent.tvSeriesAddWatclistPressed(
                  tvSeriesDetail: testTvSeriesDetail)),
      verify: (bloc) => verify(mockSaveWatchlistTvSeries.execute(testTvSeriesDetail)),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should change watchlist tv series data when data saved is successfully',
      build: () {
        when(mockSaveWatchlistTvSeries.execute(testTvSeriesDetail))
            .thenAnswer((_) async => Right('Added to watchlist'));
        when(mockGetWatchlistStatusTvSeries.execute(tId)).thenAnswer((_) async => true);
        return tvSeriesBloc;
      },
      act: (bloc) =>
          bloc.add(
              TvSeriesEvent.tvSeriesAddWatclistPressed(
                  tvSeriesDetail: testTvSeriesDetail)),
      expect: () =>
      [
        TvSeriesState(message: 'Added to watchlist'),
        TvSeriesState(message: ''),
        TvSeriesState(message: '', isAddedToWatchlist: true),
      ],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockSaveWatchlistTvSeries.execute(testTvSeriesDetail))
              .thenAnswer((_) async => Left(DatabaseFailure('Failed to save')));
          when(mockGetWatchlistStatusTvSeries.execute(tId))
              .thenAnswer((_) async => true);
          return tvSeriesBloc;
        },
        act: (bloc) =>
            bloc.add(
                TvSeriesEvent.tvSeriesAddWatclistPressed(
                    tvSeriesDetail: testTvSeriesDetail)),
        expect: () =>
        [
          TvSeriesState(message: 'Failed to save'),
          TvSeriesState(message: ''),
          TvSeriesState(message: '', isAddedToWatchlist: true),
        ]);
  });

  group('remove watchlist tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get remove watchlist from usecase',
      build: () {
        when(mockRemoveWatchlistTvSeries.execute(testTvSeriesDetail))
            .thenAnswer((_) async => Right('Removed from watchlist'));
        when(mockGetWatchlistStatusTvSeries.execute(tId)).thenAnswer((_) async => true);
        return tvSeriesBloc;
      },
      act: (bloc) =>
          bloc.add(TvSeriesEvent.tvSeriesRemoveFromWatchlistPressed(
              tvSeriesDetail: testTvSeriesDetail)),
      verify: (bloc) => verify(mockRemoveWatchlistTvSeries.execute(testTvSeriesDetail)),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should change watchlist tv series data when remove data successfully',
      build: () {
        when(mockRemoveWatchlistTvSeries.execute(testTvSeriesDetail))
            .thenAnswer((_) async => Right('Removed from watchlist'));
        when(mockGetWatchlistStatusTvSeries.execute(tId)).thenAnswer((_) async => true);
        return tvSeriesBloc;
      },
      act: (bloc) =>
          bloc.add(TvSeriesEvent.tvSeriesRemoveFromWatchlistPressed(
              tvSeriesDetail: testTvSeriesDetail)),
      expect: () =>
      [
        TvSeriesState(message: 'Removed from watchlist'),
        TvSeriesState(message: ''),
        TvSeriesState(message: '', isAddedToWatchlist: true),
      ],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockRemoveWatchlistTvSeries.execute(testTvSeriesDetail))
              .thenAnswer((_) async => Left(DatabaseFailure('Error Database')));
          when(mockGetWatchlistStatusTvSeries.execute(tId))
              .thenAnswer((_) async => true);
          return tvSeriesBloc;
        },
        act: (bloc) =>
            bloc.add(TvSeriesEvent.tvSeriesRemoveFromWatchlistPressed(
                tvSeriesDetail: testTvSeriesDetail)),
        expect: () =>
        [
          TvSeriesState(message: 'Error Database'),
          TvSeriesState(message: ''),
          TvSeriesState(message: '', isAddedToWatchlist: true),
        ]);
  });

  group('search tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get tv series search results from usecase',
      build: () {
        when(mockSearchTvSeries.execute(query))
            .thenAnswer((_) async => Right(tTvSeriesList));
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesSearchFetch(query: query)),
      verify: (bloc) => verify(mockSearchTvSeries.execute(query)),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change tv series search data when data is gotten successfully',
        build: () {
          when(mockSearchTvSeries.execute(query))
              .thenAnswer((_) async => Right(tTvSeriesList));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesSearchFetch(query: query)),
        expect: () =>
        [
          TvSeriesState(tvSeriesSearchStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesSearchStatus: RequestState.Loaded,
              tvSeriesList: tTvSeriesList),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockSearchTvSeries.execute(query))
              .thenAnswer((_) async => Left(ServerFailure('Server failure')));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesSearchFetch(query: query)),
        expect: () =>
        [
          TvSeriesState(tvSeriesSearchStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesSearchStatus: RequestState.Error,
              message: 'Server failure'),
        ]);
  });

  group('watchlist tv series', () {
    test('initial state must be empty',
            () => expect(tvSeriesBloc.state, isA<TvSeriesState>()));

    blocTest<TvSeriesBloc, TvSeriesState>(
      'Initial state should be empty',
      build: () => tvSeriesBloc,
      expect: () => <TvSeriesState>[],
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
      'should get watchlist tv series search results from usecase',
      build: () {
        when(mockGetWatchlistTvSeries.execute())
            .thenAnswer((_) async => Right(tTvSeriesList));
        return tvSeriesBloc;
      },
      act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesWatchlistFetch()),
      verify: (bloc) => verify(mockGetWatchlistTvSeries.execute()),
    );

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should change watclist data when data is gotten successfully',
        build: () {
          when(mockGetWatchlistTvSeries.execute())
              .thenAnswer((_) async => Right(tTvSeriesList));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesWatchlistFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesSearchStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesSearchStatus: RequestState.Loaded,
              tvSeriesList: tTvSeriesList),
        ]);

    blocTest<TvSeriesBloc, TvSeriesState>(
        'should return error when data is unsuccessful',
        build: () {
          when(mockGetWatchlistTvSeries.execute()).thenAnswer(
                  (_) async => Left(DatabaseFailure('Failed get watchlist')));
          return tvSeriesBloc;
        },
        act: (bloc) => bloc.add(TvSeriesEvent.tvSeriesWatchlistFetch()),
        expect: () =>
        [
          TvSeriesState(tvSeriesSearchStatus: RequestState.Loading),
          TvSeriesState(
              tvSeriesSearchStatus: RequestState.Error,
              message: 'Failed get watchlist'),
        ]);
  });
}
