import 'package:ditonton/data/models/tv_series/tv_series_model.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tTvSeriesModel = TvSeriesModel(
      id: 1,
      name: 'name',
      posterPath: 'posterPath',
      popularity: 2,
      backdropPath: 'backdropPath',
      voteAverage: 1,
      overview: 'overview',
      firstAirDate: 'firstAirDate',
      originCountry: ['a','b','c'],
      genreIds: [1,2,3],
      originalLanguage: 'originalLanguage',
      voteCount: 1,
      originalName: 'originalName');

  final tTvSeries = TvSeries(
      id: 1,
      name: 'name',
      posterPath: 'posterPath',
      popularity: 2,
      backdropPath: 'backdropPath',
      voteAverage: 1.0,
      overview: 'overview',
      firstAirDate: 'firstAirDate',
      originCountry: ['a', 'b', 'c'],
      genreIds: [1, 2, 3],
      originalLanguage: 'originalLanguage',
      voteCount: 1,
      originalName: 'originalName');

  test('should be a subclass of TV Series entity', () async {
    final result = tTvSeriesModel.toEntity();
    expect(result, tTvSeries);
  });


}
