import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie/movie.dart';
import 'package:ditonton/domain/entities/movie/movie_detail.dart';
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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_event.dart';

part 'movie_state.dart';

part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMovies _getNowPlayingMovies;
  final GetPopularMovies _getPopularMovies;
  final GetTopRatedMovies _getTopRatedMovies;
  final GetMovieDetail _getMovieDetail;
  final GetMovieRecommendations _getMovieRecommendations;
  final GetWatchListStatus _getWatchListStatus;
  final SaveWatchlist _saveWatchlist;
  final RemoveWatchlist _removeWatchlist;
  final SearchMovies _searchMovies;
  final GetWatchlistMovies _getWatchListMovies;

  MovieBloc(
    this._getMovieDetail,
    this._getMovieRecommendations,
    this._getWatchListStatus,
    this._saveWatchlist,
    this._removeWatchlist,
    this._getNowPlayingMovies,
    this._getPopularMovies,
    this._getTopRatedMovies,
    this._searchMovies,
    this._getWatchListMovies,
  ) : super(MovieState.initial()) {
    on<MovieStarted>(_movieStarted);
    on<MovieNowPlayingFetch>(_movieNowPlayingFetch);
    on<MoviePopularFetch>(_moviePopularFetch);
    on<MovieTopRatedFetch>(_movieTopRatedFetch);
    on<MovieDetailFetch>(_movieDetailFetch);
    on<MovieAddWatchlistPressed>(_movieAddWatchlistPressed);
    on<MovieRemoveFromWatchlistPressed>(_movieRemoveFromWatchlistPressed);
    on<MovieWatchlistStatusLoad>(_movieWatchlistStatusLoad);
    on<MovieSearchFetch>(_movieSearchFetch);
    on<MovieWatchlistFetch>(_movieWatchlistFetch);
  }

  FutureOr<void> _movieStarted(
    MovieStarted event,
    Emitter<MovieState> emit,
  ) {
    emit(MovieState.initial());
  }

  FutureOr<void> _movieNowPlayingFetch(
    MovieNowPlayingFetch event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(movieStatus: RequestState.Loading));

    final result = await _getNowPlayingMovies.execute();
    result.fold((failure) {
      emit(state.copyWith(
          movieStatus: RequestState.Error, message: failure.message));
    }, (movieData) {
      emit(state.copyWith(
          movieStatus: RequestState.Loaded, movieNowPlayingList: movieData));
    });
  }

  FutureOr<void> _moviePopularFetch(
    MoviePopularFetch event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(movieStatus: RequestState.Loading));

    final result = await _getPopularMovies.execute();
    result.fold((failure) {
      emit(state.copyWith(
          movieStatus: RequestState.Error, message: failure.message));
    }, (movieData) {
      emit(state.copyWith(
          movieStatus: RequestState.Loaded, moviePopularList: movieData));
    });
  }

  FutureOr<void> _movieTopRatedFetch(
    MovieTopRatedFetch event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(movieStatus: RequestState.Loading));

    final result = await _getTopRatedMovies.execute();
    result.fold((failure) {
      emit(state.copyWith(
          movieStatus: RequestState.Error, message: failure.message));
    }, (movieData) {
      emit(state.copyWith(
          movieStatus: RequestState.Loaded, movieTopRatedList: movieData));
    });
  }

  FutureOr<void> _movieDetailFetch(
    MovieDetailFetch event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(movieDetailStatus: RequestState.Loading));

    final movieDetailResult = await _getMovieDetail.execute(event.id);
    final movieRecommendationResult =
        await _getMovieRecommendations.execute(event.id);

    if (movieDetailResult.isRight() && movieRecommendationResult.isRight()) {
      emit(state.copyWith(
        movieDetail: movieDetailResult.getOrElse(() => state.movieDetail!),
        movieRecommendationList: movieRecommendationResult
            .getOrElse(() => state.movieRecommendationList),
        movieDetailStatus: RequestState.Loaded,
      ));
    } else {
      emit(state.copyWith(movieDetailStatus: RequestState.Error));
    }
  }

  FutureOr<void> _movieAddWatchlistPressed(
    MovieAddWatchlistPressed event,
    Emitter<MovieState> emit,
  ) async {
    final result = await _saveWatchlist.execute(event.movieDetail);

    result.fold((failure) {
      emit(state.copyWith(message: failure.message));
    }, (success) {
      emit(state.copyWith(message: success));
    });

    add(MovieEvent.movieWatchlistStatusLoad(id: event.movieDetail.id));
  }

  FutureOr<void> _movieRemoveFromWatchlistPressed(
    MovieRemoveFromWatchlistPressed event,
    Emitter<MovieState> emit,
  ) async {
    final result = await _removeWatchlist.execute(event.movieDetail);

    result.fold((failure) {
      emit(state.copyWith(message: failure.message));
    }, (success) {
      emit(state.copyWith(message: success));
    });

    add(MovieEvent.movieWatchlistStatusLoad(id: event.movieDetail.id));
  }

  FutureOr<void> _movieWatchlistStatusLoad(
    MovieWatchlistStatusLoad event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(message: ''));
    final result = await _getWatchListStatus.execute(event.id);

    if (result) {
      emit(state.copyWith(isAddedToWatchlist: true));
    } else {
      emit(state.copyWith(isAddedToWatchlist: false));
    }
  }

  FutureOr<void> _movieSearchFetch(
    MovieSearchFetch event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(movieSearchStatus: RequestState.Loading));

    final result = await _searchMovies.execute(event.query);
    result.fold((failure) {
      emit(state.copyWith(
          movieSearchStatus: RequestState.Error,
          movieList: [],
          message: failure.message));
    }, (movieData) {
      emit(state.copyWith(
          movieSearchStatus: RequestState.Loaded, movieList: movieData));
    });
  }

  FutureOr<void> _movieWatchlistFetch(
    MovieWatchlistFetch event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(movieSearchStatus: RequestState.Loading));

    final result = await _getWatchListMovies.execute();
    result.fold((failure) {
      emit(state.copyWith(
        movieSearchStatus: RequestState.Error,
        message: failure.message,
      ));
    }, (movieData) {
      emit(state.copyWith(
        movieSearchStatus: RequestState.Loaded,
        movieList: movieData,
      ));
    });
  }
}
