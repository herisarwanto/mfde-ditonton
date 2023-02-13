part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState({
    @Default([]) List<Movie> movieNowPlayingList,
    @Default([]) List<Movie> moviePopularList,
    @Default([]) List<Movie> movieTopRatedList,
    @Default([]) List<Movie> movieList,
    MovieDetail? movieDetail,
    @Default([]) List<Movie> movieRecommendationList,
    @Default(RequestState.Empty) RequestState movieStatus,
    @Default(RequestState.Empty) RequestState movieDetailStatus,
    @Default(RequestState.Empty) RequestState movieSearchStatus,
    @Default('') String message,
    @Default(false) bool isAddedToWatchlist,
  }) = _MovieState;

  factory MovieState.initial() => MovieState(
      movieNowPlayingList: [],
      moviePopularList: [],
      movieTopRatedList: [],
      movieDetail: null,
      movieRecommendationList: [],
      movieList: [],
      movieStatus: RequestState.Empty,
      movieDetailStatus: RequestState.Empty,
      movieSearchStatus: RequestState.Empty,
      message: '',
      isAddedToWatchlist: false);
}
