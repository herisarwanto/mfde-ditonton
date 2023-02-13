part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.movieStarted() = MovieStarted;

  const factory MovieEvent.movieNowPlayingFetch() = MovieNowPlayingFetch;

  const factory MovieEvent.moviePopularFetch() = MoviePopularFetch;

  const factory MovieEvent.movieTopRatedFetch() = MovieTopRatedFetch;

  const factory MovieEvent.movieDetailFetch({
    required int id,
  }) = MovieDetailFetch;

  const factory MovieEvent.movieAddWatchlistPressed({
    required MovieDetail movieDetail,
  }) = MovieAddWatchlistPressed;

  const factory MovieEvent.movieRemoveFromWatchlistPressed({
    required MovieDetail movieDetail,
  }) = MovieRemoveFromWatchlistPressed;

  const factory MovieEvent.movieWatchlistStatusLoad({
    required int id,
  }) = MovieWatchlistStatusLoad;

  const factory MovieEvent.movieSearchFetch({
    required String query,
  }) = MovieSearchFetch;

  const factory MovieEvent.movieWatchlistFetch() = MovieWatchlistFetch;
}
