part of 'tv_series_bloc.dart';

@freezed
class TvSeriesEvent with _$TvSeriesEvent {
  const factory TvSeriesEvent.tvSeriesStarted() = TvSeriesStarted;

  const factory TvSeriesEvent.tvSeriesNowPlayingFetch() =
      TvSeriesNowPlayingFetch;

  const factory TvSeriesEvent.tvSeriesPopularFetch() = TvSeriesPopularFetch;

  const factory TvSeriesEvent.tvSeriesTopRatedFetch() = TvSeriesTopRatedFetch;

  const factory TvSeriesEvent.tvSeriesDetailFetch({
    required int id,
  }) = TvSeriesDetailFetch;

  const factory TvSeriesEvent.tvSeriesAddWatclistPressed({
    required TvSeriesDetail tvSeriesDetail,
  }) = TvSeriesAddWatclistPressed;

  const factory TvSeriesEvent.tvSeriesRemoveFromWatchlistPressed({
    required TvSeriesDetail tvSeriesDetail,
  }) = TvSeriesRemoveFromWatchlistPressed;

  const factory TvSeriesEvent.tvSeriesWatchlistStatusLoad({
    required int id,
  }) = TvSeriesWatchlistStatusLoad;

  const factory TvSeriesEvent.tvSeriesSearchFetch({
    required String query,
  }) = TvSeriesSearchFetch;

  const factory TvSeriesEvent.tvSeriesWatchlistFetch() = TvSeriesWatchlistFetch;
}
