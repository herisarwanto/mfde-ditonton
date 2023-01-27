import 'dart:convert';

import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_detail_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_response.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series_detail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  List<GenreModel> genreList = [
    GenreModel(id: 1, name: 'name'),
    GenreModel(id: 2, name: 'name')
  ];

  final tTvSeriesDetailModel = TvSeriesDetailModel(
      id: 1,
      name: 'name',
      backdropPath: 'backdropPath',
      episodeRunTime: [1, 2, 3],
      firstAirDate: 'firstAirDate',
      genres: genreList,
      homepage: 'homepage',
      inProduction: true,
      languages: ['a', 'b', 'c'],
      lastAirDate: 'lastAirDate',
      numberOfEpisodes: 1,
      numberOfSeasons: 1,
      originCountry: ['a', 'b'],
      originalLanguage: 'originalLanguage',
      originalName: 'originalName',
      overview: 'overview',
      popularity: 1,
      posterPath: null,
      status: 'status',
      tagline: 'tagline',
      type: 'type',
      voteAverage: 1.0,
      voteCount: 10);

  List<Genre> genres = [Genre(id: 1, name: 'name'), Genre(id: 2, name: 'name')];

  final tTvSeriesDetail = TvSeriesDetail(
      id: 1,
      name: 'name',
      backdropPath: 'backdropPath',
      episodeRunTime: [1, 2, 3],
      firstAirDate: 'firstAirDate',
      genres: genres,
      homepage: 'homepage',
      inProduction: true,
      languages: ['a', 'b', 'c'],
      lastAirDate: 'lastAirDate',
      numberOfEpisodes: 1,
      numberOfSeasons: 1,
      originCountry: ['a', 'b'],
      originalLanguage: 'originalLanguage',
      originalName: 'originalName',
      overview: 'overview',
      popularity: 1,
      posterPath: null,
      status: 'status',
      tagline: 'tagline',
      type: 'type',
      voteAverage: 1.0,
      voteCount: 10);

  final tTvSeriesModel = TvSeriesModel(
      id: 1,
      name: 'name',
      posterPath: '/zra8NrzxaEeunRWJmUm3HZOL4sd.jpg',
      popularity: 1.0,
      backdropPath: '/b0BckgEovxYLBbIk5xXyWYQpmlT.jpg',
      voteAverage: 1,
      overview: 'overview',
      firstAirDate: '2023-01-23',
      originCountry: ['GB'],
      genreIds: [1, 2, 3],
      originalLanguage: 'en',
      voteCount: 1,
      originalName: 'originalName');

  final tTvSeriesResponse =
      TvSeriesResponse(tvList: <TvSeriesModel>[tTvSeriesModel]);

  test('Should be a subclass of Tv Series Detail entity', () async {
    final result = tTvSeriesDetailModel.toEntity();
    expect(tTvSeriesDetail, result);
  });

  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(readJson('dummy_data/now_playing_tv_series.json'));

      // act
      final result = TvSeriesResponse.fromJson(jsonMap);

      // assert
      expect(result, tTvSeriesResponse);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () {
      // arrange

      // act
      final result = tTvSeriesResponse.toJson();
      // assert
      final expectedJsonMap = {
        "results": [
          {
            "poster_path": "/zra8NrzxaEeunRWJmUm3HZOL4sd.jpg",
            "popularity": 1.0,
            "id": 1,
            "backdrop_path": "/b0BckgEovxYLBbIk5xXyWYQpmlT.jpg",
            "vote_average": 1,
            "overview": "overview",
            "first_air_date": "2023-01-23",
            "origin_country": [
              "GB"
            ],
            "genre_ids": [
              1,
              2,
              3
            ],
            "original_language": "en",
            "vote_count": 1,
            "name": "name",
            "original_name": "originalName"
          }
        ],
      };

      expect(result, expectedJsonMap);
    });
  });
}
