import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series_detail.dart';
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
  final List<int>? episodeRunTime;
  final String? firstAirDate;
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
  final double popularity;
  final String? posterPath;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;

  factory TvSeriesDetailModel.fromJson(Map<String, dynamic> json) {
    return TvSeriesDetailModel(
      id: json['id'],
      name: json['name'],
      backdropPath: json['backdrop_path'],
      episodeRunTime: json['episode_runtime'],
      firstAirDate: json['first_air_date'],
      genres: List<GenreModel>.from(
          json["genres"].map((x) => GenreModel.fromJson(x))),
      homepage: json['homepage'],
      inProduction: json['in_production'],
      languages: List<String>.from(json['languages'].map((x) => x)),
      lastAirDate: json['last_air_date'],
      numberOfEpisodes: json['number_of_episodes'],
      numberOfSeasons: json['number_of_seasons'],
      originCountry: List<String>.from(json['origin_country'].map((x) => x)),
      originalLanguage: json['original_language'],
      originalName: json['original_name'],
      overview: json['overview'],
      popularity: json['popularity'].toDouble(),
      posterPath: json['poster_path'],
      status: json['status'],
      tagline: json['tagline'],
      type: json['type'],
      voteAverage: json['vote_average'].toDouble(),
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'backdrop_path': this.backdropPath,
      'episode_runtime': this.episodeRunTime,
      'first_air_date': this.firstAirDate,
      'genres': this.genres,
      'homepage': this.homepage,
      'in_production': this.inProduction,
      'languages': this.languages,
      'last_air_date': this.lastAirDate,
      'number_of_episodes': this.numberOfEpisodes,
      'number_of_seasons': this.numberOfSeasons,
      'origin_country': this.originCountry,
      'original_language': this.originalLanguage,
      'original_name': this.originalName,
      'overview': this.overview,
      'popularity': this.popularity,
      'poster_path': this.posterPath,
      'status': this.status,
      'tagline': this.tagline,
      'type': this.type,
      'vote_average': this.voteAverage,
      'vote_count': this.voteCount,
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
