import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series_detail.dart';
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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_event.dart';

part 'tv_series_state.dart';

part 'tv_series_bloc.freezed.dart';

class TvSeriesBloc extends Bloc<TvSeriesEvent, TvSeriesState> {
  final GetNowPlayingTvSeries _getNowPlayingTvSeries;
  final GetPopularTvSeries _getPopularTvSeries;
  final GetTopRatedTvSeries _getTopRatedTvSeries;
  final GetTvSeriesDetail _getTvSeriesDetail;
  final GetTvSeriesRecommendations _getTvSeriesRecommendations;
  final GetWatchlistStatusTvSeries _getWatchlistStatusTvSeries;
  final SaveWatchlistTvSeries _saveWatchlistTvSeries;
  final RemoveWatchlistTvSeries _removeWatchlistTvSeries;
  final SearchTvSeries _searchTvSeries;
  final GetWatchlistTvSeries _getWatchlistTvSeries;

  TvSeriesBloc(
      this._getNowPlayingTvSeries,
      this._getPopularTvSeries,
      this._getTopRatedTvSeries,
      this._getTvSeriesDetail,
      this._getTvSeriesRecommendations,
      this._getWatchlistStatusTvSeries,
      this._saveWatchlistTvSeries,
      this._removeWatchlistTvSeries,
      this._searchTvSeries,
      this._getWatchlistTvSeries)
      : super(TvSeriesState.initial()) {
    on<TvSeriesStarted>(_tvSeriesStarted);
    on<TvSeriesNowPlayingFetch>(_tvSeriesNowPlayingFetch);
    on<TvSeriesPopularFetch>(_tvSeriesPopularFetch);
    on<TvSeriesTopRatedFetch>(_tvSeriesTopRatedFetch);
    on<TvSeriesDetailFetch>(_tvSeriesDetailFetch);
    on<TvSeriesAddWatclistPressed>(_tvSeriesAddWatclistPressed);
    on<TvSeriesRemoveFromWatchlistPressed>(_tvSeriesRemoveFromWatchlistPressed);
    on<TvSeriesWatchlistStatusLoad>(_tvSeriesWatchlistStatusLoad);
    on<TvSeriesSearchFetch>(_tvSeriesSearchFetch);
    on<TvSeriesWatchlistFetch>(_tvSeriesWatchlistFetch);
  }

  FutureOr<void> _tvSeriesStarted(
    TvSeriesStarted event,
    Emitter<TvSeriesState> emit,
  ) {
    emit(TvSeriesState.initial());
  }

  FutureOr<void> _tvSeriesNowPlayingFetch(
    TvSeriesNowPlayingFetch event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(tvSeriesStatus: RequestState.Loading));

    final result = await _getNowPlayingTvSeries.execute();
    result.fold((failure) {
      emit(state.copyWith(
        tvSeriesStatus: RequestState.Error,
        message: failure.message,
      ));
    }, (tvData) {
      emit(state.copyWith(
        tvSeriesStatus: RequestState.Loaded,
        tvSeriesNowPlayingList: tvData,
      ));
    });
  }

  FutureOr<void> _tvSeriesPopularFetch(
    TvSeriesPopularFetch event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(tvSeriesStatus: RequestState.Loading));

    final result = await _getPopularTvSeries.execute();
    result.fold((failure) {
      emit(state.copyWith(
        tvSeriesStatus: RequestState.Error,
        message: failure.message,
      ));
    }, (tvData) {
      emit(state.copyWith(
        tvSeriesStatus: RequestState.Loaded,
        tvSeriesPopularList: tvData,
      ));
    });
  }

  FutureOr<void> _tvSeriesTopRatedFetch(
    TvSeriesTopRatedFetch event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(tvSeriesStatus: RequestState.Loading));

    final result = await _getTopRatedTvSeries.execute();
    result.fold((failure) {
      emit(state.copyWith(
        tvSeriesStatus: RequestState.Error,
        message: failure.message,
      ));
    }, (tvData) {
      emit(state.copyWith(
        tvSeriesStatus: RequestState.Loaded,
        tvSeriesTopRatedList: tvData,
      ));
    });
  }

  FutureOr<void> _tvSeriesDetailFetch(
    TvSeriesDetailFetch event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(tvSeriesDetailStatus: RequestState.Loading));

    final tvSeriesDetailResult = await _getTvSeriesDetail.execute(event.id);
    final tvSeriesRecommendationResult =
        await _getTvSeriesRecommendations.execute(event.id);

    if (tvSeriesDetailResult.isRight() &&
        tvSeriesRecommendationResult.isRight()) {
      emit(state.copyWith(
        tvSeriesDetail:
            tvSeriesDetailResult.getOrElse(() => state.tvSeriesDetail!),
        tvSeriesRecommendationList: tvSeriesRecommendationResult
            .getOrElse(() => state.tvSeriesRecommendationList),
        tvSeriesDetailStatus: RequestState.Loaded,
      ));
    } else {
      emit(state.copyWith(tvSeriesDetailStatus: RequestState.Error));
    }
  }

  FutureOr<void> _tvSeriesAddWatclistPressed(
    TvSeriesAddWatclistPressed event,
    Emitter<TvSeriesState> emit,
  ) async {
    final result = await _saveWatchlistTvSeries.execute(event.tvSeriesDetail);

    result.fold((failure) {
      emit(state.copyWith(message: failure.message));
    }, (success) {
      emit(state.copyWith(message: success));
    });

    add(TvSeriesEvent.tvSeriesWatchlistStatusLoad(id: event.tvSeriesDetail.id));
  }

  FutureOr<void> _tvSeriesRemoveFromWatchlistPressed(
    TvSeriesRemoveFromWatchlistPressed event,
    Emitter<TvSeriesState> emit,
  ) async {
    final result = await _removeWatchlistTvSeries.execute(event.tvSeriesDetail);

    result.fold((failure) {
      emit(state.copyWith(message: failure.message));
    }, (success) {
      emit(state.copyWith(message: success));
    });

    add(TvSeriesEvent.tvSeriesWatchlistStatusLoad(id: event.tvSeriesDetail.id));
  }

  FutureOr<void> _tvSeriesWatchlistStatusLoad(
    TvSeriesWatchlistStatusLoad event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(message: ''));
    final result = await _getWatchlistStatusTvSeries.execute(event.id);

    if (result) {
      emit(state.copyWith(isAddedToWatchlist: true));
    } else {
      emit(state.copyWith(isAddedToWatchlist: false));
    }
  }

  FutureOr<void> _tvSeriesSearchFetch(
    TvSeriesSearchFetch event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(tvSeriesSearchStatus: RequestState.Loading));

    final result = await _searchTvSeries.execute(event.query);
    result.fold((failure) {
      emit(state.copyWith(
          tvSeriesSearchStatus: RequestState.Error,
          tvSeriesList: [],
          message: failure.message));
    }, (tvData) {
      emit(state.copyWith(
          tvSeriesSearchStatus: RequestState.Loaded, tvSeriesList: tvData));
    });
  }

  FutureOr<void> _tvSeriesWatchlistFetch(
    TvSeriesWatchlistFetch event,
    Emitter<TvSeriesState> emit,
  ) async {
    emit(state.copyWith(tvSeriesSearchStatus: RequestState.Loading));

    final result = await _getWatchlistTvSeries.execute();
    result.fold((failure) {
      emit(state.copyWith(
        tvSeriesSearchStatus: RequestState.Error,
        message: failure.message,
      ));
    }, (tvData) {
      emit(state.copyWith(
        tvSeriesSearchStatus: RequestState.Loaded,
        tvSeriesList: tvData,
      ));
    });
  }
}
