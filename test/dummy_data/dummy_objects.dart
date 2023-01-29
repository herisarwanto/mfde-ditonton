import 'package:ditonton/data/models/movie/movie_table.dart';
import 'package:ditonton/data/models/tv_series/tv_series_table.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie/movie.dart';
import 'package:ditonton/domain/entities/movie/movie_detail.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series_detail.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testMovieList = [testMovie];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieTable = MovieTable(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

final testTvSeries = TvSeries(
    id: 1,
    name: 'name',
    posterPath: 'posterPath',
    popularity: 1.0,
    backdropPath: 'backdropPath',
    voteAverage: 1,
    overview: 'overview',
    firstAirDate: 'firstAirDate',
    originCountry: ['a', 'b', 'c'],
    genreIds: [1, 2, 3],
    originalLanguage: 'originalLanguage',
    voteCount: 1,
    originalName: 'originalName');

final testTvSeriesList = [testTvSeries];

final testTvSeriesDetail = TvSeriesDetail(
    id: 1,
    name: 'name',
    backdropPath: 'backdropPath',
    episodeRunTime: [1, 2, 3],
    firstAirDate: 'firstAirDate',
    genres: [Genre(id: 1, name: 'Family')],
    homepage: 'homepage',
    inProduction: true,
    languages: ['a', 'b'],
    lastAirDate: 'lastAirDate',
    numberOfEpisodes: 8,
    numberOfSeasons: 1,
    originCountry: ['a', 'b'],
    originalLanguage: 'originalLanguage',
    originalName: 'originalName',
    overview: 'overview',
    popularity: 10,
    posterPath: 'posterPath',
    status: 'status',
    tagline: 'tagline',
    type: 'type',
    voteAverage: 1.0,
    voteCount: 1);

final testTvSeriesTable = TvSeriesTable(
    id: 1, name: 'name', posterPath: 'posterPath', overview: 'overview');

final testWatchlistTvSeries = TvSeries.watchlist(
    id: 1, name: 'name', overview: 'overview', posterPath: 'posterPath');

final testTvSeriesMap = {
  'id': 1,
  'name': 'name',
  'posterPath': 'posterPath',
  'overview': 'overview',
};
