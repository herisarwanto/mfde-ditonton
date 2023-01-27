import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series_detail.dart';
import 'package:equatable/equatable.dart';

class TvSeriesTable extends Equatable {
  final int id;
  final String? name;
  final String? posterPath;
  final String? overview;

  TvSeriesTable({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.overview,
  });

  factory TvSeriesTable.fromEntity(TvSeriesDetail tvSeries) => TvSeriesTable(
      id: tvSeries.id,
      name: tvSeries.name,
      posterPath: tvSeries.posterPath,
      overview: tvSeries.overview);

  factory TvSeriesTable.fromMap(Map<String, dynamic> map) {
    return TvSeriesTable(
      id: map['id'],
      name: map['name'],
      posterPath: map['posterPath'],
      overview: map['overview'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'posterPath': this.posterPath,
      'overview': this.overview,
    };
  }

  TvSeries toEntity() => TvSeries.watchlist(
      id: id, name: name, overview: overview, posterPath: posterPath);

  @override
  List<Object?> get props => [id, name, posterPath, overview];
}
