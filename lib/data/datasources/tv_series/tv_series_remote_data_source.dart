import 'dart:convert';
import 'dart:io';

import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/exception.dart';
import 'package:ditonton/data/models/tv_series/tv_series_detail_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_response.dart';
import 'package:ditonton/helper/endpoint_helper.dart';
import 'package:http/http.dart' as http;

abstract class TvSeriesRemoteDataSource {
  Future<List<TvSeriesModel>> getNowPlayingTvSeries();

  Future<List<TvSeriesModel>> getPopularTvSeries();

  Future<List<TvSeriesModel>> getTopRateTvSeries();

  Future<TvSeriesDetailModel> getTvSeriesDetail(int id);

  Future<List<TvSeriesModel>> getTvSeriesRecommendations(int id);

  Future<List<TvSeriesModel>> searchTvSeries(String query);
}

class TvSeriesRemoteDataSourceImpl implements TvSeriesRemoteDataSource {
  final http.Client client;

  TvSeriesRemoteDataSourceImpl({required this.client});

  @override
  Future<List<TvSeriesModel>> getNowPlayingTvSeries() async {
    final response = await client.get(Uri.parse(generateEndpoint(
        endpoint: NOW_PLAYING_TV_SERIES_URL, type: EndpointType.endpoint)));

    if (response.statusCode == HttpStatus.ok) {
      return TvSeriesResponse.fromJson(jsonDecode(response.body)).tvList;
    }

    throw ServerException();
  }

  @override
  Future<List<TvSeriesModel>> getPopularTvSeries() async {
    final response = await client.get(Uri.parse(generateEndpoint(
        endpoint: POPULAR_TV_SERIES_URL, type: EndpointType.endpoint)));

    if (response.statusCode == HttpStatus.ok) {
      return TvSeriesResponse.fromJson(jsonDecode(response.body)).tvList;
    }

    throw ServerException();
  }

  @override
  Future<List<TvSeriesModel>> getTopRateTvSeries() async {
    final response = await client.get(Uri.parse(generateEndpoint(
        endpoint: TOP_RATED_TV_SERIES_URL, type: EndpointType.endpoint)));

    if (response.statusCode == HttpStatus.ok) {
      return TvSeriesResponse.fromJson(jsonDecode(response.body)).tvList;
    }

    throw ServerException();
  }

  @override
  Future<TvSeriesDetailModel> getTvSeriesDetail(int id) async {
    final response = await client.get(Uri.parse(generateEndpoint(
        endpoint: TV_SERIES_URL + '/$id', type: EndpointType.endpoint)));

    if (response.statusCode == HttpStatus.ok) {
      return TvSeriesDetailModel.fromJson(jsonDecode(response.body));
    }

    throw ServerException();
  }

  @override
  Future<List<TvSeriesModel>> getTvSeriesRecommendations(int id) async {
    final response = await client.get(Uri.parse(generateEndpoint(
        endpoint: TV_SERIES_URL + '/$id/recommendations',
        type: EndpointType.endpoint)));

    if (response.statusCode == HttpStatus.ok) {
      return TvSeriesResponse.fromJson(jsonDecode(response.body)).tvList;
    }

    throw ServerException();
  }

  @override
  Future<List<TvSeriesModel>> searchTvSeries(String query) async {
    final response = await client.get(Uri.parse(generateEndpoint(
        endpoint: SEARCH_TV_SERIES_URL,
        query: query,
        type: EndpointType.endpointWithQuery)));

    if (response.statusCode == HttpStatus.ok) {
      return TvSeriesResponse.fromJson(jsonDecode(response.body)).tvList;
    }

    throw ServerException();
  }
}
