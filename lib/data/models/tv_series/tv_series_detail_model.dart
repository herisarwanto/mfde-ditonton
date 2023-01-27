import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:equatable/equatable.dart';

class TvSeriesDetailModel extends Equatable {
  TvSeriesDetailModel({
    required this.id,
    required this.name,
    required this.backdropPath,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.homepage,
    required this.inProduction,
    required this.languages,
    required this.lastAirDate,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
  });

  final int id;
  final String name;
  final String? backdropPath;
  final List<int> episodeRunTime;
  final String firstAirDate;
  final List<GenreModel> genres;
  final String homepage;
  final bool inProduction;
  final List<String> languages;
  final String lastAirDate;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final int popularity;
  final String? posterPath;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;

  factory TvSeriesDetailModel.fromJson(Map<String, dynamic> json) {
    return TvSeriesDetailModel(
      id: json['id'] as int,
      name: json['name'] as String,
      backdropPath: json['backdropPath'] as String,
      episodeRunTime: json['episodeRunTime'] as List<int>,
      firstAirDate: json['firstAirDate'] as String,
      genres: json['genres'] as List<GenreModel>,
      homepage: json['homepage'] as String,
      inProduction: json['inProduction'] as bool,
      languages: json['languages'] as List<String>,
      lastAirDate: json['lastAirDate'] as String,
      numberOfEpisodes: json['numberOfEpisodes'] as int,
      numberOfSeasons: json['numberOfSeasons'] as int,
      originCountry: json['originCountry'] as List<String>,
      originalLanguage: json['originalLanguage'] as String,
      originalName: json['originalName'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as int,
      posterPath: json['posterPath'] as String,
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      type: json['type'] as String,
      voteAverage: json['voteAverage'] as double,
      voteCount: json['voteCount'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'backdropPath': this.backdropPath,
      'episodeRunTime': this.episodeRunTime,
      'firstAirDate': this.firstAirDate,
      'genres': this.genres,
      'homepage': this.homepage,
      'inProduction': this.inProduction,
      'languages': this.languages,
      'lastAirDate': this.lastAirDate,
      'numberOfEpisodes': this.numberOfEpisodes,
      'numberOfSeasons': this.numberOfSeasons,
      'originCountry': this.originCountry,
      'originalLanguage': this.originalLanguage,
      'originalName': this.originalName,
      'overview': this.overview,
      'popularity': this.popularity,
      'posterPath': this.posterPath,
      'status': this.status,
      'tagline': this.tagline,
      'type': this.type,
      'voteAverage': this.voteAverage,
      'voteCount': this.voteCount,
    };
  }

  TvSeriesDetail toEntity() {
    return TvSeriesDetail(
        id: id,
        name: name,
        backdropPath: backdropPath,
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate,
        genres: genres.map((genre) => genre.toEntity()).toList(),
        homepage: homepage,
        inProduction: inProduction,
        languages: languages,
        lastAirDate: lastAirDate,
        numberOfEpisodes: numberOfEpisodes,
        numberOfSeasons: numberOfSeasons,
        originCountry: originCountry,
        originalLanguage: originalLanguage,
        originalName: originalName,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        status: status,
        tagline: tagline,
        type: type,
        voteAverage: voteAverage,
        voteCount: voteCount);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        backdropPath,
        episodeRunTime,
        firstAirDate,
        genres,
        homepage,
        inProduction,
        languages,
        lastAirDate,
        numberOfEpisodes,
        numberOfSeasons,
        originCountry,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        status,
        tagline,
        type,
        voteAverage,
        voteCount,
      ];
}
