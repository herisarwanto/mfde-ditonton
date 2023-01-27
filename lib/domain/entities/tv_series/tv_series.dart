import 'package:equatable/equatable.dart';

class TvSeries extends Equatable {
  TvSeries({
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

  TvSeries.watchlist({
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
});

  int? id;
  String? name;
  String? posterPath;
  double? popularity;
  String? backdropPath;
  num? voteAverage;
  String? overview;
  String? firstAirDate;
  List<String>? originCountry;
  List<int>? genreIds;
  String? originalLanguage;
  int? voteCount;
  String? originalName;

  @override
  List<Object?> get props =>
      [
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
