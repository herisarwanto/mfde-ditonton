import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:equatable/equatable.dart';

class TvSeriesModel extends Equatable {
  TvSeriesModel({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.popularity,
    required this.backdropPath,
    required this.voteAverage,
    required this.overview,
    required this.firstAirDate,
    required this.originCountry,
    required this.genreIds,
    required this.originalLanguage,
    required this.voteCount,
    required this.originalName,
  });

  final int id;
  final String name;
  final String? posterPath;
  final double popularity;
  final String? backdropPath;
  final int voteAverage;
  final String overview;
  final String firstAirDate;
  final List<String> originCountry;
  final List<int> genreIds;
  final String originalLanguage;
  final int voteCount;
  final String originalName;

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) {
    return TvSeriesModel(
      id: json['id'] as int,
      name: json['name'] as String,
      posterPath: json['posterPath'] as String,
      popularity: json['popularity'] as double,
      backdropPath: json['backdropPath'] as String,
      voteAverage: json['voteAverage'] as int,
      overview: json['overview'] as String,
      firstAirDate: json['firstAirDate'] as String,
      originCountry: json['originCountry'] as List<String>,
      genreIds: json['genreIds'] as List<int>,
      originalLanguage: json['originalLanguage'] as String,
      voteCount: json['voteCount'] as int,
      originalName: json['originalName'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'posterPath': this.posterPath,
      'popularity': this.popularity,
      'backdropPath': this.backdropPath,
      'voteAverage': this.voteAverage,
      'overview': this.overview,
      'firstAirDate': this.firstAirDate,
      'originCountry': this.originCountry,
      'genreIds': this.genreIds,
      'originalLanguage': this.originalLanguage,
      'voteCount': this.voteCount,
      'originalName': this.originalName,
    };
  }

  TvSeries toEntity() {
    return TvSeries(
      id: id,
      name: name,
      posterPath: posterPath,
      popularity: popularity,
      backdropPath: backdropPath,
      voteAverage: voteAverage,
      overview: overview,
      firstAirDate: firstAirDate,
      originCountry: originCountry,
      genreIds: genreIds,
      originalLanguage: originalLanguage,
      voteCount: voteCount,
      originalName: originalName);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        posterPath,
        popularity,
        backdropPath,
        voteAverage,
        overview,
        firstAirDate,
        originCountry,
        genreIds,
        originalLanguage,
        voteCount,
        originalName,
      ];
}
