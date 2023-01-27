import 'dart:async';

import 'package:ditonton/data/models/movie/movie_table.dart';
import 'package:ditonton/data/models/tv_series/tv_series_table.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static Database? _database;

  Future<Database?> get database async {
    if (_database == null) {
      _database = await _initDb();
    }
    return _database;
  }

  static const String _tblWatchlistMovie = 'watchlist_movie';
  static const String _tblWatchlistTvSeries = 'watchlist_tv_series';

  Future<Database> _initDb() async {
    final path = await getDatabasesPath();
    final databasePath = '$path/ditonton.db';

    var db = await openDatabase(databasePath, version: 1,
        onCreate: (db, version) async {
      var batch = db.batch();
      _createTableWatchlistMovie(db, version);
      _createTableWatchlistTvSeries(db, version);

      await batch.commit();
    });
    return db;
  }

  void _createTableWatchlistMovie(Database db, int version) async {
    await db.execute('''
      CREATE TABLE  $_tblWatchlistMovie (
        id INTEGER PRIMARY KEY,
        title TEXT,
        overview TEXT,
        posterPath TEXT
      );
    ''');
  }

  void _createTableWatchlistTvSeries(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $_tblWatchlistTvSeries (
      id INTEGER PRIMARY KEY,
      name TEXT,
      posterPath TEXT,
      overview TEXT
    );
    ''');
  }

  Future<int> insertWatchlist(MovieTable movie) async {
    final db = await database;
    return await db!.insert(_tblWatchlistMovie, movie.toJson());
  }

  Future<int> removeWatchlist(MovieTable movie) async {
    final db = await database;
    return await db!.delete(
      _tblWatchlistMovie,
      where: 'id = ?',
      whereArgs: [movie.id],
    );
  }

  Future<Map<String, dynamic>?> getMovieById(int id) async {
    final db = await database;
    final results = await db!.query(
      _tblWatchlistMovie,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (results.isNotEmpty) {
      return results.first;
    } else {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> getWatchlistMovies() async {
    final db = await database;
    final List<Map<String, dynamic>> results =
        await db!.query(_tblWatchlistMovie);

    return results;
  }

  Future<int> insertWatchlistTvSeries(TvSeriesTable tvSeriesTable) async {
    final db = await database;
    return await db!.insert(_tblWatchlistTvSeries, tvSeriesTable.toMap());
  }

  Future<int> removeWatchlistTvSeries(TvSeriesTable tvSeriesTable) async {
    final db = await database;
    return await db!.delete(
      _tblWatchlistTvSeries,
      where: 'id = ?',
      whereArgs: [tvSeriesTable.id],
    );
  }

  Future<Map<String, dynamic>?> getTvSeriesById(int id) async {
    final db = await database;
    final results = await db!.query(
      _tblWatchlistTvSeries,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (results.isNotEmpty) {
      return results.first;
    } else {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> getWatchlistTvSeries() async {
    final db = await database;
    final List<Map<String, dynamic>> results =
    await db!.query(_tblWatchlistTvSeries);

    return results;
  }
}
