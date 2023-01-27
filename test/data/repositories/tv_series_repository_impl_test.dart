import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/exception.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_detail_model.dart';
import 'package:ditonton/data/models/tv_series/tv_series_model.dart';
import 'package:ditonton/data/repositories/tv_series_repository_impl.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvSeriesRepositoryImpl repository;
  late MockTvSeriesRemoteDataSource mockTvSeriesRemoteDataSource;
  late MockTvSeriesLocalDataSource mockTvSeriesLocalDataSource;

  setUp(() {
    mockTvSeriesRemoteDataSource = MockTvSeriesRemoteDataSource();
    mockTvSeriesLocalDataSource = MockTvSeriesLocalDataSource();
    repository = TvSeriesRepositoryImpl(
      remoteDataSource: mockTvSeriesRemoteDataSource,
      localDataSource: mockTvSeriesLocalDataSource,
    );
  });

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

  final tTvSeries = TvSeries(
      id: 1,
      name: 'name',
      posterPath: '/zra8NrzxaEeunRWJmUm3HZOL4sd.jpg',
      popularity: 1.0,
      backdropPath: '/b0BckgEovxYLBbIk5xXyWYQpmlT.jpg',
      voteAverage: 1.0,
      overview: 'overview',
      firstAirDate: '2023-01-23',
      originCountry: ['GB'],
      genreIds: [1, 2, 3],
      originalLanguage: 'en',
      voteCount: 1,
      originalName: 'originalName');

  final tTvSeriesModelList = <TvSeriesModel>[tTvSeriesModel];
  final tTvSeriesList = <TvSeries>[tTvSeries];

  group('Now Playing Tv Series', () {
    test(
        'should return remote data when the call to remote data source is successful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getNowPlayingTvSeries())
          .thenAnswer((_) async => tTvSeriesModelList);
      // act
      final result = await repository.getNowPlayingTvSeries();
      // assert
      verify(mockTvSeriesRemoteDataSource.getNowPlayingTvSeries());
      final resultList = result.getOrElse(() => []);
      expect(resultList, tTvSeriesList);
    });

    test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getNowPlayingTvSeries())
          .thenThrow(ServerException());
      // act
      final result = await repository.getNowPlayingTvSeries();
      // assert
      verify(mockTvSeriesRemoteDataSource.getNowPlayingTvSeries());
      expect(result, equals(Left(ServerFailure(''))));
    });

    test(
        'should return connection failure when the device is not connected to internet',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getNowPlayingTvSeries())
          .thenThrow(SocketException(FAILED_CONNECT_TO_INTERNET));
      // act
      final result = await repository.getNowPlayingTvSeries();
      // assert
      verify(mockTvSeriesRemoteDataSource.getNowPlayingTvSeries());
      expect(
          result, equals(Left(ConnectionFailure(FAILED_CONNECT_TO_INTERNET))));
    });
  });

  group('Popular TV Series', () {
    test('should return tv series list when call to data source is success',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getPopularTvSeries())
          .thenAnswer((_) async => tTvSeriesModelList);
      // act
      final result = await repository.getPopularTvSeries();
      // assert
      final resultList = result.getOrElse(() => []);
      expect(resultList, tTvSeriesList);
    });

    test(
        'should return server failure when call to data source is unsuccessful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getPopularTvSeries())
          .thenThrow(ServerException());
      // act
      final result = await repository.getPopularTvSeries();

      // assert
      expect(result, Left(ServerFailure('')));
    });

    test(
        'should return internet connection failure when device not connected to the internet',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getPopularTvSeries())
          .thenThrow(SocketException('Failed to connect to the network'));
      // act
      final result = await repository.getPopularTvSeries();
      // assert
      expect(
          result, Left(ConnectionFailure('Failed to connect to the network')));
    });
  });

  group('Top Rated TV Series', () {
    test('should return tv series list when call to data source is success',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTopRateTvSeries())
          .thenAnswer((_) async => tTvSeriesModelList);
      // act
      final result = await repository.getTopRatedTvSeries();
      // assert
      final resultList = result.getOrElse(() => []);
      expect(resultList, tTvSeriesList);
    });

    test(
        'should return server failure when call to data source is unsuccessful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTopRateTvSeries())
          .thenThrow(ServerException());
      // act
      final result = await repository.getTopRatedTvSeries();
      // assert
      expect(result, Left(ServerFailure('')));
    });

    test(
        'should return internet connection failure when device not connected to the internet',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTopRateTvSeries())
          .thenThrow(SocketException('Failed to connect to the network'));
      // act
      final result = await repository.getTopRatedTvSeries();
      // assert
      expect(
          result, Left(ConnectionFailure('Failed to connect to the network')));
    });
  });

  group('Get Tv Series Detail', () {
    final tId = 1;
    final tTvSeriesResponse = TvSeriesDetailModel(
        id: 1,
        name: 'name',
        backdropPath: 'backdropPath',
        episodeRunTime: [1, 2, 3],
        firstAirDate: 'firstAirDate',
        genres: [GenreModel(id: 1, name: 'Family')],
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

    test(
        'should return Tv Series when the call to remote data source is successful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTvSeriesDetail(tId))
          .thenAnswer((_) async => tTvSeriesResponse);
      // act
      final result = await repository.getTvSeriesDetail(tId);
      // assert
      verify(mockTvSeriesRemoteDataSource.getTvSeriesDetail(tId));
      expect(result, equals(Right(testTvSeriesDetail)));
    });

    test(
        'should return Server Failure when the call to remote data source is unsuccessful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTvSeriesDetail(tId))
          .thenThrow(ServerException());
      // act
      final result = await repository.getTvSeriesDetail(tId);
      // assert
      verify(mockTvSeriesRemoteDataSource.getTvSeriesDetail(tId));
      expect(result, equals(Left(ServerFailure(''))));
    });

    test(
        'should return connection failure when the device is not connected to internet',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTvSeriesDetail(tId))
          .thenThrow(SocketException('Failed to connect to the network'));
      // act
      final result = await repository.getTvSeriesDetail(tId);
      // assert
      verify(mockTvSeriesRemoteDataSource.getTvSeriesDetail(tId));
      expect(result,
          equals(Left(ConnectionFailure('Failed to connect to the network'))));
    });
  });

  group('Get Tv Series Recommendations', () {
    final tTvSeriesList = <TvSeriesModel>[];
    final tId = 1;

    test('should return data (tv series list) when the call is successful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTvSeriesRecommendations(tId))
          .thenAnswer((_) async => tTvSeriesList);
      // act
      final result = await repository.getTvSeriesRecommendations(tId);
      // assert
      verify(mockTvSeriesRemoteDataSource.getTvSeriesRecommendations(tId));
      /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
      final resultList = result.getOrElse(() => []);
      expect(resultList, equals(tTvSeriesList));
    });

    test(
        'should return server failure when call to remote data source is unsuccessful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTvSeriesRecommendations(tId))
          .thenThrow(ServerException());
      // act
      final result = await repository.getTvSeriesRecommendations(tId);
      // assert
      verify(mockTvSeriesRemoteDataSource.getTvSeriesRecommendations(tId));
      expect(result, equals(Left(ServerFailure(''))));
    });

    test(
        'should return connection failure when the device is not connected to the internet',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.getTvSeriesRecommendations(tId))
          .thenThrow(SocketException('Failed to connect to the network'));
      // act
      final result = await repository.getTvSeriesRecommendations(tId);
      // assert
      verify(mockTvSeriesRemoteDataSource.getTvSeriesRecommendations(tId));
      expect(result,
          equals(Left(ConnectionFailure('Failed to connect to the network'))));
    });
  });

  group('Search Tv Series', () {
    final tQuery = 'spiderman';

    test('should return tv series list when call to data source is successful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.searchTvSeries(tQuery))
          .thenAnswer((_) async => tTvSeriesModelList);
      // act
      final result = await repository.searchTvSeries(tQuery);
      // assert
      /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
      final resultList = result.getOrElse(() => []);
      expect(resultList, tTvSeriesList);
    });

    test('should return ServerFailure when call to data source is unsuccessful',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.searchTvSeries(tQuery))
          .thenThrow(ServerException());
      // act
      final result = await repository.searchTvSeries(tQuery);
      // assert
      expect(result, Left(ServerFailure('')));
    });

    test(
        'should return ConnectionFailure when device is not connected to the internet',
        () async {
      // arrange
      when(mockTvSeriesRemoteDataSource.searchTvSeries(tQuery))
          .thenThrow(SocketException('Failed to connect to the network'));
      // act
      final result = await repository.searchTvSeries(tQuery);
      // assert
      expect(
          result, Left(ConnectionFailure('Failed to connect to the network')));
    });
  });

  group('save watchlist', () {
    test('should return success message when saving successful', () async {
      // arrange
      when(mockTvSeriesLocalDataSource
              .insertWatchlistTvSeries(testTvSeriesTable))
          .thenAnswer((_) async => 'Added to Watchlist');
      // act
      final result = await repository.saveWatchlistTvSeries(testTvSeriesDetail);
      // assert
      expect(result, Right('Added to Watchlist'));
    });

    test('should return DatabaseFailure when saving unsuccessful', () async {
      // arrange
      when(mockTvSeriesLocalDataSource
              .insertWatchlistTvSeries(testTvSeriesTable))
          .thenThrow(DatabaseException('Failed to add watchlist'));
      // act
      final result = await repository.saveWatchlistTvSeries(testTvSeriesDetail);
      // assert
      expect(result, Left(DatabaseFailure('Failed to add watchlist')));
    });
  });

  group('remove watchlist', () {
    test('should return success message when remove successful', () async {
      // arrange
      when(mockTvSeriesLocalDataSource
              .removeWatchlistTvSeries(testTvSeriesTable))
          .thenAnswer((_) async => 'Removed from watchlist');
      // act
      final result =
          await repository.removeWatchlistTvSeries(testTvSeriesDetail);
      // assert
      expect(result, Right('Removed from watchlist'));
    });

    test('should return DatabaseFailure when remove unsuccessful', () async {
      // arrange
      when(mockTvSeriesLocalDataSource
              .removeWatchlistTvSeries(testTvSeriesTable))
          .thenThrow(DatabaseException('Failed to remove watchlist'));
      // act
      final result =
          await repository.removeWatchlistTvSeries(testTvSeriesDetail);
      // assert
      expect(result, Left(DatabaseFailure('Failed to remove watchlist')));
    });
  });

  group('get watchlist status', () {
    test('should return watch status whether data is found', () async {
      // arrange
      final tId = 1;
      when(mockTvSeriesLocalDataSource.getTvSeriesById(tId))
          .thenAnswer((_) async => null);
      // act
      final result = await repository.isAddedToWatchlistTvSeries(tId);
      // assert
      expect(result, false);
    });
  });

  group('get watchlist tv series', () {
    test('should return list of tv series', () async {
      // arrange
      when(mockTvSeriesLocalDataSource.getWatchlistTvSeries())
          .thenAnswer((_) async => [testTvSeriesTable]);
      // act
      final result = await repository.getWatchlistTvSeries();
      // assert
      final resultList = result.getOrElse(() => []);
      expect(resultList, [testWatchlistTvSeries]);
    });
  });
}
