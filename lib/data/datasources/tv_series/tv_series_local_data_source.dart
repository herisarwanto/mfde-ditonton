import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/exception.dart';
import 'package:ditonton/data/datasources/db/database_helper.dart';
import 'package:ditonton/data/models/tv_series/tv_series_table.dart';

abstract class TvSeriesLocalDataSource {
  Future<String> insertWatchlistTvSeries(TvSeriesTable tvSeries);

  Future<String> removeWatchlistTvSeries(TvSeriesTable tvSeries);

  Future<TvSeriesTable?> getTvSeriesById(int id);

  Future<List<TvSeriesTable>> getWatchlistTvSeries();
}

class TvSeriesLocalDataSourceImpl implements TvSeriesLocalDataSource {
  final DatabaseHelper databaseHelper;

  TvSeriesLocalDataSourceImpl({
    required this.databaseHelper,
  });

  @override
  Future<TvSeriesTable?> getTvSeriesById(int id) async {
    try {
      final result = await databaseHelper.getTvSeriesById(id);
      if (result != null) {
        return TvSeriesTable.fromMap(result);
      }

      return null;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<List<TvSeriesTable>> getWatchlistTvSeries() async {
    try {
      final result = await databaseHelper.getWatchlistTvSeries();
      return result.map((data) => TvSeriesTable.fromMap(data)).toList();
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> insertWatchlistTvSeries(TvSeriesTable tvSeries) async {
    try {
      await databaseHelper.insertWatchlistTvSeries(tvSeries);
      return ADDED_TO_WATCHLIST;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> removeWatchlistTvSeries(TvSeriesTable tvSeries) async {
    try {
      await databaseHelper.removeWatchlistTvSeries(tvSeries);
      return REMOVED_FROM_WATCHLIST;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }
}
