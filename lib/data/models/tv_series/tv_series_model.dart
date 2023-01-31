import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
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

  final String? posterPath;
  final int id;
  final String name;
  final double popularity;
  final String? backdropPath;
  final double voteAverage;
  final String overview;
  final String? firstAirDate;
  final List<String> originCountry;
  final List<int> genreIds;
  final String originalLanguage;
  final int voteCount;
  final String originalName;

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) {
    return TvSeriesModel(
      id: json['id'],
      name: json['name'],
      posterPath: json['poster_path'],
      popularity: json['popularity'],
      backdropPath: json['backdrop_path'],
      voteAverage: json['vote_average'].toDouble(),
      overview: json['overview'],
      firstAirDate: json['first_air_date'],
      originCountry: List<String>.from(json['origin_country'].map((x) => x)),
      genreIds: List<int>.from(json['genre_ids'].map((x) => x)),
      originalLanguage: json['original_language'],
      voteCount: json['vote_count'],
      originalName: json['original_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'poster_path': this.posterPath,
      'popularity': this.popularity,
      'backdrop_path': this.backdropPath,
      'vote_average': this.voteAverage,
      'overview': this.overview,
      'first_air_date': this.firstAirDate,
      'origin_country': this.originCountry,
      'genre_ids': this.genreIds,
      'original_language': this.originalLanguage,
      'vote_count': this.voteCount,
      'original_name': this.originalName,
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
