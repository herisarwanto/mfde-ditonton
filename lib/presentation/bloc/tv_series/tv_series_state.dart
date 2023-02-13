part of 'tv_series_bloc.dart';

@freezed
class TvSeriesState with _$TvSeriesState {
  const factory TvSeriesState({
    @Default([]) List<TvSeries> tvSeriesNowPlayingList,
    @Default([]) List<TvSeries> tvSeriesPopularList,
    @Default([]) List<TvSeries> tvSeriesTopRatedList,
    @Default([]) List<TvSeries> tvSeriesList,
    TvSeriesDetail? tvSeriesDetail,
    @Default([]) List<TvSeries> tvSeriesRecommendationList,
    @Default(RequestState.Empty) RequestState tvSeriesStatus,
    @Default(RequestState.Empty) RequestState tvSeriesDetailStatus,
    @Default(RequestState.Empty) RequestState tvSeriesSearchStatus,
    @Default('') String message,
    @Default(false) bool isAddedToWatchlist,
  }) = _TvSeriesState;

  factory TvSeriesState.initial() => TvSeriesState();
}
