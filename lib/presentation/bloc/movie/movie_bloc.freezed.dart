// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieEventTearOff {
  const _$MovieEventTearOff();

  MovieStarted movieStarted() {
    return const MovieStarted();
  }

  MovieNowPlayingFetch movieNowPlayingFetch() {
    return const MovieNowPlayingFetch();
  }

  MoviePopularFetch moviePopularFetch() {
    return const MoviePopularFetch();
  }

  MovieTopRatedFetch movieTopRatedFetch() {
    return const MovieTopRatedFetch();
  }

  MovieDetailFetch movieDetailFetch({required int id}) {
    return MovieDetailFetch(
      id: id,
    );
  }

  MovieAddWatchlistPressed movieAddWatchlistPressed(
      {required MovieDetail movieDetail}) {
    return MovieAddWatchlistPressed(
      movieDetail: movieDetail,
    );
  }

  MovieRemoveFromWatchlistPressed movieRemoveFromWatchlistPressed(
      {required MovieDetail movieDetail}) {
    return MovieRemoveFromWatchlistPressed(
      movieDetail: movieDetail,
    );
  }

  MovieWatchlistStatusLoad movieWatchlistStatusLoad({required int id}) {
    return MovieWatchlistStatusLoad(
      id: id,
    );
  }

  MovieSearchFetch movieSearchFetch({required String query}) {
    return MovieSearchFetch(
      query: query,
    );
  }

  MovieWatchlistFetch movieWatchlistFetch() {
    return const MovieWatchlistFetch();
  }
}

/// @nodoc
const $MovieEvent = _$MovieEventTearOff();

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res> implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  final MovieEvent _value;
  // ignore: unused_field
  final $Res Function(MovieEvent) _then;
}

/// @nodoc
abstract class $MovieStartedCopyWith<$Res> {
  factory $MovieStartedCopyWith(
          MovieStarted value, $Res Function(MovieStarted) then) =
      _$MovieStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStartedCopyWithImpl<$Res> extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieStartedCopyWith<$Res> {
  _$MovieStartedCopyWithImpl(
      MovieStarted _value, $Res Function(MovieStarted) _then)
      : super(_value, (v) => _then(v as MovieStarted));

  @override
  MovieStarted get _value => super._value as MovieStarted;
}

/// @nodoc

class _$MovieStarted implements MovieStarted {
  const _$MovieStarted();

  @override
  String toString() {
    return 'MovieEvent.movieStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieStarted != null) {
      return movieStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieStarted != null) {
      return movieStarted(this);
    }
    return orElse();
  }
}

abstract class MovieStarted implements MovieEvent {
  const factory MovieStarted() = _$MovieStarted;
}

/// @nodoc
abstract class $MovieNowPlayingFetchCopyWith<$Res> {
  factory $MovieNowPlayingFetchCopyWith(MovieNowPlayingFetch value,
          $Res Function(MovieNowPlayingFetch) then) =
      _$MovieNowPlayingFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieNowPlayingFetchCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieNowPlayingFetchCopyWith<$Res> {
  _$MovieNowPlayingFetchCopyWithImpl(
      MovieNowPlayingFetch _value, $Res Function(MovieNowPlayingFetch) _then)
      : super(_value, (v) => _then(v as MovieNowPlayingFetch));

  @override
  MovieNowPlayingFetch get _value => super._value as MovieNowPlayingFetch;
}

/// @nodoc

class _$MovieNowPlayingFetch implements MovieNowPlayingFetch {
  const _$MovieNowPlayingFetch();

  @override
  String toString() {
    return 'MovieEvent.movieNowPlayingFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieNowPlayingFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieNowPlayingFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieNowPlayingFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieNowPlayingFetch != null) {
      return movieNowPlayingFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieNowPlayingFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieNowPlayingFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieNowPlayingFetch != null) {
      return movieNowPlayingFetch(this);
    }
    return orElse();
  }
}

abstract class MovieNowPlayingFetch implements MovieEvent {
  const factory MovieNowPlayingFetch() = _$MovieNowPlayingFetch;
}

/// @nodoc
abstract class $MoviePopularFetchCopyWith<$Res> {
  factory $MoviePopularFetchCopyWith(
          MoviePopularFetch value, $Res Function(MoviePopularFetch) then) =
      _$MoviePopularFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviePopularFetchCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MoviePopularFetchCopyWith<$Res> {
  _$MoviePopularFetchCopyWithImpl(
      MoviePopularFetch _value, $Res Function(MoviePopularFetch) _then)
      : super(_value, (v) => _then(v as MoviePopularFetch));

  @override
  MoviePopularFetch get _value => super._value as MoviePopularFetch;
}

/// @nodoc

class _$MoviePopularFetch implements MoviePopularFetch {
  const _$MoviePopularFetch();

  @override
  String toString() {
    return 'MovieEvent.moviePopularFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoviePopularFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return moviePopularFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return moviePopularFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (moviePopularFetch != null) {
      return moviePopularFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return moviePopularFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return moviePopularFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (moviePopularFetch != null) {
      return moviePopularFetch(this);
    }
    return orElse();
  }
}

abstract class MoviePopularFetch implements MovieEvent {
  const factory MoviePopularFetch() = _$MoviePopularFetch;
}

/// @nodoc
abstract class $MovieTopRatedFetchCopyWith<$Res> {
  factory $MovieTopRatedFetchCopyWith(
          MovieTopRatedFetch value, $Res Function(MovieTopRatedFetch) then) =
      _$MovieTopRatedFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieTopRatedFetchCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieTopRatedFetchCopyWith<$Res> {
  _$MovieTopRatedFetchCopyWithImpl(
      MovieTopRatedFetch _value, $Res Function(MovieTopRatedFetch) _then)
      : super(_value, (v) => _then(v as MovieTopRatedFetch));

  @override
  MovieTopRatedFetch get _value => super._value as MovieTopRatedFetch;
}

/// @nodoc

class _$MovieTopRatedFetch implements MovieTopRatedFetch {
  const _$MovieTopRatedFetch();

  @override
  String toString() {
    return 'MovieEvent.movieTopRatedFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieTopRatedFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieTopRatedFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieTopRatedFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieTopRatedFetch != null) {
      return movieTopRatedFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieTopRatedFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieTopRatedFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieTopRatedFetch != null) {
      return movieTopRatedFetch(this);
    }
    return orElse();
  }
}

abstract class MovieTopRatedFetch implements MovieEvent {
  const factory MovieTopRatedFetch() = _$MovieTopRatedFetch;
}

/// @nodoc
abstract class $MovieDetailFetchCopyWith<$Res> {
  factory $MovieDetailFetchCopyWith(
          MovieDetailFetch value, $Res Function(MovieDetailFetch) then) =
      _$MovieDetailFetchCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$MovieDetailFetchCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieDetailFetchCopyWith<$Res> {
  _$MovieDetailFetchCopyWithImpl(
      MovieDetailFetch _value, $Res Function(MovieDetailFetch) _then)
      : super(_value, (v) => _then(v as MovieDetailFetch));

  @override
  MovieDetailFetch get _value => super._value as MovieDetailFetch;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(MovieDetailFetch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieDetailFetch implements MovieDetailFetch {
  const _$MovieDetailFetch({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'MovieEvent.movieDetailFetch(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailFetch &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $MovieDetailFetchCopyWith<MovieDetailFetch> get copyWith =>
      _$MovieDetailFetchCopyWithImpl<MovieDetailFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieDetailFetch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieDetailFetch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieDetailFetch != null) {
      return movieDetailFetch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieDetailFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieDetailFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieDetailFetch != null) {
      return movieDetailFetch(this);
    }
    return orElse();
  }
}

abstract class MovieDetailFetch implements MovieEvent {
  const factory MovieDetailFetch({required int id}) = _$MovieDetailFetch;

  int get id;
  @JsonKey(ignore: true)
  $MovieDetailFetchCopyWith<MovieDetailFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieAddWatchlistPressedCopyWith<$Res> {
  factory $MovieAddWatchlistPressedCopyWith(MovieAddWatchlistPressed value,
          $Res Function(MovieAddWatchlistPressed) then) =
      _$MovieAddWatchlistPressedCopyWithImpl<$Res>;
  $Res call({MovieDetail movieDetail});
}

/// @nodoc
class _$MovieAddWatchlistPressedCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieAddWatchlistPressedCopyWith<$Res> {
  _$MovieAddWatchlistPressedCopyWithImpl(MovieAddWatchlistPressed _value,
      $Res Function(MovieAddWatchlistPressed) _then)
      : super(_value, (v) => _then(v as MovieAddWatchlistPressed));

  @override
  MovieAddWatchlistPressed get _value =>
      super._value as MovieAddWatchlistPressed;

  @override
  $Res call({
    Object? movieDetail = freezed,
  }) {
    return _then(MovieAddWatchlistPressed(
      movieDetail: movieDetail == freezed
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetail,
    ));
  }
}

/// @nodoc

class _$MovieAddWatchlistPressed implements MovieAddWatchlistPressed {
  const _$MovieAddWatchlistPressed({required this.movieDetail});

  @override
  final MovieDetail movieDetail;

  @override
  String toString() {
    return 'MovieEvent.movieAddWatchlistPressed(movieDetail: $movieDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieAddWatchlistPressed &&
            const DeepCollectionEquality()
                .equals(other.movieDetail, movieDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(movieDetail));

  @JsonKey(ignore: true)
  @override
  $MovieAddWatchlistPressedCopyWith<MovieAddWatchlistPressed> get copyWith =>
      _$MovieAddWatchlistPressedCopyWithImpl<MovieAddWatchlistPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieAddWatchlistPressed(movieDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieAddWatchlistPressed?.call(movieDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieAddWatchlistPressed != null) {
      return movieAddWatchlistPressed(movieDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieAddWatchlistPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieAddWatchlistPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieAddWatchlistPressed != null) {
      return movieAddWatchlistPressed(this);
    }
    return orElse();
  }
}

abstract class MovieAddWatchlistPressed implements MovieEvent {
  const factory MovieAddWatchlistPressed({required MovieDetail movieDetail}) =
      _$MovieAddWatchlistPressed;

  MovieDetail get movieDetail;
  @JsonKey(ignore: true)
  $MovieAddWatchlistPressedCopyWith<MovieAddWatchlistPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieRemoveFromWatchlistPressedCopyWith<$Res> {
  factory $MovieRemoveFromWatchlistPressedCopyWith(
          MovieRemoveFromWatchlistPressed value,
          $Res Function(MovieRemoveFromWatchlistPressed) then) =
      _$MovieRemoveFromWatchlistPressedCopyWithImpl<$Res>;
  $Res call({MovieDetail movieDetail});
}

/// @nodoc
class _$MovieRemoveFromWatchlistPressedCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieRemoveFromWatchlistPressedCopyWith<$Res> {
  _$MovieRemoveFromWatchlistPressedCopyWithImpl(
      MovieRemoveFromWatchlistPressed _value,
      $Res Function(MovieRemoveFromWatchlistPressed) _then)
      : super(_value, (v) => _then(v as MovieRemoveFromWatchlistPressed));

  @override
  MovieRemoveFromWatchlistPressed get _value =>
      super._value as MovieRemoveFromWatchlistPressed;

  @override
  $Res call({
    Object? movieDetail = freezed,
  }) {
    return _then(MovieRemoveFromWatchlistPressed(
      movieDetail: movieDetail == freezed
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetail,
    ));
  }
}

/// @nodoc

class _$MovieRemoveFromWatchlistPressed
    implements MovieRemoveFromWatchlistPressed {
  const _$MovieRemoveFromWatchlistPressed({required this.movieDetail});

  @override
  final MovieDetail movieDetail;

  @override
  String toString() {
    return 'MovieEvent.movieRemoveFromWatchlistPressed(movieDetail: $movieDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieRemoveFromWatchlistPressed &&
            const DeepCollectionEquality()
                .equals(other.movieDetail, movieDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(movieDetail));

  @JsonKey(ignore: true)
  @override
  $MovieRemoveFromWatchlistPressedCopyWith<MovieRemoveFromWatchlistPressed>
      get copyWith => _$MovieRemoveFromWatchlistPressedCopyWithImpl<
          MovieRemoveFromWatchlistPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieRemoveFromWatchlistPressed(movieDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieRemoveFromWatchlistPressed?.call(movieDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieRemoveFromWatchlistPressed != null) {
      return movieRemoveFromWatchlistPressed(movieDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieRemoveFromWatchlistPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieRemoveFromWatchlistPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieRemoveFromWatchlistPressed != null) {
      return movieRemoveFromWatchlistPressed(this);
    }
    return orElse();
  }
}

abstract class MovieRemoveFromWatchlistPressed implements MovieEvent {
  const factory MovieRemoveFromWatchlistPressed(
      {required MovieDetail movieDetail}) = _$MovieRemoveFromWatchlistPressed;

  MovieDetail get movieDetail;
  @JsonKey(ignore: true)
  $MovieRemoveFromWatchlistPressedCopyWith<MovieRemoveFromWatchlistPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatchlistStatusLoadCopyWith<$Res> {
  factory $MovieWatchlistStatusLoadCopyWith(MovieWatchlistStatusLoad value,
          $Res Function(MovieWatchlistStatusLoad) then) =
      _$MovieWatchlistStatusLoadCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$MovieWatchlistStatusLoadCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieWatchlistStatusLoadCopyWith<$Res> {
  _$MovieWatchlistStatusLoadCopyWithImpl(MovieWatchlistStatusLoad _value,
      $Res Function(MovieWatchlistStatusLoad) _then)
      : super(_value, (v) => _then(v as MovieWatchlistStatusLoad));

  @override
  MovieWatchlistStatusLoad get _value =>
      super._value as MovieWatchlistStatusLoad;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(MovieWatchlistStatusLoad(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieWatchlistStatusLoad implements MovieWatchlistStatusLoad {
  const _$MovieWatchlistStatusLoad({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'MovieEvent.movieWatchlistStatusLoad(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieWatchlistStatusLoad &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $MovieWatchlistStatusLoadCopyWith<MovieWatchlistStatusLoad> get copyWith =>
      _$MovieWatchlistStatusLoadCopyWithImpl<MovieWatchlistStatusLoad>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieWatchlistStatusLoad(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieWatchlistStatusLoad?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieWatchlistStatusLoad != null) {
      return movieWatchlistStatusLoad(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieWatchlistStatusLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieWatchlistStatusLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieWatchlistStatusLoad != null) {
      return movieWatchlistStatusLoad(this);
    }
    return orElse();
  }
}

abstract class MovieWatchlistStatusLoad implements MovieEvent {
  const factory MovieWatchlistStatusLoad({required int id}) =
      _$MovieWatchlistStatusLoad;

  int get id;
  @JsonKey(ignore: true)
  $MovieWatchlistStatusLoadCopyWith<MovieWatchlistStatusLoad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchFetchCopyWith<$Res> {
  factory $MovieSearchFetchCopyWith(
          MovieSearchFetch value, $Res Function(MovieSearchFetch) then) =
      _$MovieSearchFetchCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$MovieSearchFetchCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieSearchFetchCopyWith<$Res> {
  _$MovieSearchFetchCopyWithImpl(
      MovieSearchFetch _value, $Res Function(MovieSearchFetch) _then)
      : super(_value, (v) => _then(v as MovieSearchFetch));

  @override
  MovieSearchFetch get _value => super._value as MovieSearchFetch;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(MovieSearchFetch(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieSearchFetch implements MovieSearchFetch {
  const _$MovieSearchFetch({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'MovieEvent.movieSearchFetch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieSearchFetch &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  $MovieSearchFetchCopyWith<MovieSearchFetch> get copyWith =>
      _$MovieSearchFetchCopyWithImpl<MovieSearchFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieSearchFetch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieSearchFetch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieSearchFetch != null) {
      return movieSearchFetch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieSearchFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieSearchFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieSearchFetch != null) {
      return movieSearchFetch(this);
    }
    return orElse();
  }
}

abstract class MovieSearchFetch implements MovieEvent {
  const factory MovieSearchFetch({required String query}) = _$MovieSearchFetch;

  String get query;
  @JsonKey(ignore: true)
  $MovieSearchFetchCopyWith<MovieSearchFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatchlistFetchCopyWith<$Res> {
  factory $MovieWatchlistFetchCopyWith(
          MovieWatchlistFetch value, $Res Function(MovieWatchlistFetch) then) =
      _$MovieWatchlistFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieWatchlistFetchCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements $MovieWatchlistFetchCopyWith<$Res> {
  _$MovieWatchlistFetchCopyWithImpl(
      MovieWatchlistFetch _value, $Res Function(MovieWatchlistFetch) _then)
      : super(_value, (v) => _then(v as MovieWatchlistFetch));

  @override
  MovieWatchlistFetch get _value => super._value as MovieWatchlistFetch;
}

/// @nodoc

class _$MovieWatchlistFetch implements MovieWatchlistFetch {
  const _$MovieWatchlistFetch();

  @override
  String toString() {
    return 'MovieEvent.movieWatchlistFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieWatchlistFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieStarted,
    required TResult Function() movieNowPlayingFetch,
    required TResult Function() moviePopularFetch,
    required TResult Function() movieTopRatedFetch,
    required TResult Function(int id) movieDetailFetch,
    required TResult Function(MovieDetail movieDetail) movieAddWatchlistPressed,
    required TResult Function(MovieDetail movieDetail)
        movieRemoveFromWatchlistPressed,
    required TResult Function(int id) movieWatchlistStatusLoad,
    required TResult Function(String query) movieSearchFetch,
    required TResult Function() movieWatchlistFetch,
  }) {
    return movieWatchlistFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
  }) {
    return movieWatchlistFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieStarted,
    TResult Function()? movieNowPlayingFetch,
    TResult Function()? moviePopularFetch,
    TResult Function()? movieTopRatedFetch,
    TResult Function(int id)? movieDetailFetch,
    TResult Function(MovieDetail movieDetail)? movieAddWatchlistPressed,
    TResult Function(MovieDetail movieDetail)? movieRemoveFromWatchlistPressed,
    TResult Function(int id)? movieWatchlistStatusLoad,
    TResult Function(String query)? movieSearchFetch,
    TResult Function()? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieWatchlistFetch != null) {
      return movieWatchlistFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStarted value) movieStarted,
    required TResult Function(MovieNowPlayingFetch value) movieNowPlayingFetch,
    required TResult Function(MoviePopularFetch value) moviePopularFetch,
    required TResult Function(MovieTopRatedFetch value) movieTopRatedFetch,
    required TResult Function(MovieDetailFetch value) movieDetailFetch,
    required TResult Function(MovieAddWatchlistPressed value)
        movieAddWatchlistPressed,
    required TResult Function(MovieRemoveFromWatchlistPressed value)
        movieRemoveFromWatchlistPressed,
    required TResult Function(MovieWatchlistStatusLoad value)
        movieWatchlistStatusLoad,
    required TResult Function(MovieSearchFetch value) movieSearchFetch,
    required TResult Function(MovieWatchlistFetch value) movieWatchlistFetch,
  }) {
    return movieWatchlistFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
  }) {
    return movieWatchlistFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStarted value)? movieStarted,
    TResult Function(MovieNowPlayingFetch value)? movieNowPlayingFetch,
    TResult Function(MoviePopularFetch value)? moviePopularFetch,
    TResult Function(MovieTopRatedFetch value)? movieTopRatedFetch,
    TResult Function(MovieDetailFetch value)? movieDetailFetch,
    TResult Function(MovieAddWatchlistPressed value)? movieAddWatchlistPressed,
    TResult Function(MovieRemoveFromWatchlistPressed value)?
        movieRemoveFromWatchlistPressed,
    TResult Function(MovieWatchlistStatusLoad value)? movieWatchlistStatusLoad,
    TResult Function(MovieSearchFetch value)? movieSearchFetch,
    TResult Function(MovieWatchlistFetch value)? movieWatchlistFetch,
    required TResult orElse(),
  }) {
    if (movieWatchlistFetch != null) {
      return movieWatchlistFetch(this);
    }
    return orElse();
  }
}

abstract class MovieWatchlistFetch implements MovieEvent {
  const factory MovieWatchlistFetch() = _$MovieWatchlistFetch;
}

/// @nodoc
class _$MovieStateTearOff {
  const _$MovieStateTearOff();

  _MovieState call(
      {List<Movie> movieNowPlayingList = const [],
      List<Movie> moviePopularList = const [],
      List<Movie> movieTopRatedList = const [],
      List<Movie> movieList = const [],
      MovieDetail? movieDetail,
      List<Movie> movieRecommendationList = const [],
      RequestState movieStatus = RequestState.Empty,
      RequestState movieDetailStatus = RequestState.Empty,
      RequestState movieSearchStatus = RequestState.Empty,
      String message = '',
      bool isAddedToWatchlist = false}) {
    return _MovieState(
      movieNowPlayingList: movieNowPlayingList,
      moviePopularList: moviePopularList,
      movieTopRatedList: movieTopRatedList,
      movieList: movieList,
      movieDetail: movieDetail,
      movieRecommendationList: movieRecommendationList,
      movieStatus: movieStatus,
      movieDetailStatus: movieDetailStatus,
      movieSearchStatus: movieSearchStatus,
      message: message,
      isAddedToWatchlist: isAddedToWatchlist,
    );
  }
}

/// @nodoc
const $MovieState = _$MovieStateTearOff();

/// @nodoc
mixin _$MovieState {
  List<Movie> get movieNowPlayingList => throw _privateConstructorUsedError;
  List<Movie> get moviePopularList => throw _privateConstructorUsedError;
  List<Movie> get movieTopRatedList => throw _privateConstructorUsedError;
  List<Movie> get movieList => throw _privateConstructorUsedError;
  MovieDetail? get movieDetail => throw _privateConstructorUsedError;
  List<Movie> get movieRecommendationList => throw _privateConstructorUsedError;
  RequestState get movieStatus => throw _privateConstructorUsedError;
  RequestState get movieDetailStatus => throw _privateConstructorUsedError;
  RequestState get movieSearchStatus => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isAddedToWatchlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> movieNowPlayingList,
      List<Movie> moviePopularList,
      List<Movie> movieTopRatedList,
      List<Movie> movieList,
      MovieDetail? movieDetail,
      List<Movie> movieRecommendationList,
      RequestState movieStatus,
      RequestState movieDetailStatus,
      RequestState movieSearchStatus,
      String message,
      bool isAddedToWatchlist});
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;

  @override
  $Res call({
    Object? movieNowPlayingList = freezed,
    Object? moviePopularList = freezed,
    Object? movieTopRatedList = freezed,
    Object? movieList = freezed,
    Object? movieDetail = freezed,
    Object? movieRecommendationList = freezed,
    Object? movieStatus = freezed,
    Object? movieDetailStatus = freezed,
    Object? movieSearchStatus = freezed,
    Object? message = freezed,
    Object? isAddedToWatchlist = freezed,
  }) {
    return _then(_value.copyWith(
      movieNowPlayingList: movieNowPlayingList == freezed
          ? _value.movieNowPlayingList
          : movieNowPlayingList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      moviePopularList: moviePopularList == freezed
          ? _value.moviePopularList
          : moviePopularList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieTopRatedList: movieTopRatedList == freezed
          ? _value.movieTopRatedList
          : movieTopRatedList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieDetail: movieDetail == freezed
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      movieRecommendationList: movieRecommendationList == freezed
          ? _value.movieRecommendationList
          : movieRecommendationList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieStatus: movieStatus == freezed
          ? _value.movieStatus
          : movieStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieDetailStatus: movieDetailStatus == freezed
          ? _value.movieDetailStatus
          : movieDetailStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieSearchStatus: movieSearchStatus == freezed
          ? _value.movieSearchStatus
          : movieSearchStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAddedToWatchlist: isAddedToWatchlist == freezed
          ? _value.isAddedToWatchlist
          : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieStateCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory _$MovieStateCopyWith(
          _MovieState value, $Res Function(_MovieState) then) =
      __$MovieStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> movieNowPlayingList,
      List<Movie> moviePopularList,
      List<Movie> movieTopRatedList,
      List<Movie> movieList,
      MovieDetail? movieDetail,
      List<Movie> movieRecommendationList,
      RequestState movieStatus,
      RequestState movieDetailStatus,
      RequestState movieSearchStatus,
      String message,
      bool isAddedToWatchlist});
}

/// @nodoc
class __$MovieStateCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$MovieStateCopyWith<$Res> {
  __$MovieStateCopyWithImpl(
      _MovieState _value, $Res Function(_MovieState) _then)
      : super(_value, (v) => _then(v as _MovieState));

  @override
  _MovieState get _value => super._value as _MovieState;

  @override
  $Res call({
    Object? movieNowPlayingList = freezed,
    Object? moviePopularList = freezed,
    Object? movieTopRatedList = freezed,
    Object? movieList = freezed,
    Object? movieDetail = freezed,
    Object? movieRecommendationList = freezed,
    Object? movieStatus = freezed,
    Object? movieDetailStatus = freezed,
    Object? movieSearchStatus = freezed,
    Object? message = freezed,
    Object? isAddedToWatchlist = freezed,
  }) {
    return _then(_MovieState(
      movieNowPlayingList: movieNowPlayingList == freezed
          ? _value.movieNowPlayingList
          : movieNowPlayingList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      moviePopularList: moviePopularList == freezed
          ? _value.moviePopularList
          : moviePopularList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieTopRatedList: movieTopRatedList == freezed
          ? _value.movieTopRatedList
          : movieTopRatedList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieDetail: movieDetail == freezed
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      movieRecommendationList: movieRecommendationList == freezed
          ? _value.movieRecommendationList
          : movieRecommendationList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieStatus: movieStatus == freezed
          ? _value.movieStatus
          : movieStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieDetailStatus: movieDetailStatus == freezed
          ? _value.movieDetailStatus
          : movieDetailStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieSearchStatus: movieSearchStatus == freezed
          ? _value.movieSearchStatus
          : movieSearchStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAddedToWatchlist: isAddedToWatchlist == freezed
          ? _value.isAddedToWatchlist
          : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MovieState implements _MovieState {
  const _$_MovieState(
      {this.movieNowPlayingList = const [],
      this.moviePopularList = const [],
      this.movieTopRatedList = const [],
      this.movieList = const [],
      this.movieDetail,
      this.movieRecommendationList = const [],
      this.movieStatus = RequestState.Empty,
      this.movieDetailStatus = RequestState.Empty,
      this.movieSearchStatus = RequestState.Empty,
      this.message = '',
      this.isAddedToWatchlist = false});

  @JsonKey()
  @override
  final List<Movie> movieNowPlayingList;
  @JsonKey()
  @override
  final List<Movie> moviePopularList;
  @JsonKey()
  @override
  final List<Movie> movieTopRatedList;
  @JsonKey()
  @override
  final List<Movie> movieList;
  @override
  final MovieDetail? movieDetail;
  @JsonKey()
  @override
  final List<Movie> movieRecommendationList;
  @JsonKey()
  @override
  final RequestState movieStatus;
  @JsonKey()
  @override
  final RequestState movieDetailStatus;
  @JsonKey()
  @override
  final RequestState movieSearchStatus;
  @JsonKey()
  @override
  final String message;
  @JsonKey()
  @override
  final bool isAddedToWatchlist;

  @override
  String toString() {
    return 'MovieState(movieNowPlayingList: $movieNowPlayingList, moviePopularList: $moviePopularList, movieTopRatedList: $movieTopRatedList, movieList: $movieList, movieDetail: $movieDetail, movieRecommendationList: $movieRecommendationList, movieStatus: $movieStatus, movieDetailStatus: $movieDetailStatus, movieSearchStatus: $movieSearchStatus, message: $message, isAddedToWatchlist: $isAddedToWatchlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieState &&
            const DeepCollectionEquality()
                .equals(other.movieNowPlayingList, movieNowPlayingList) &&
            const DeepCollectionEquality()
                .equals(other.moviePopularList, moviePopularList) &&
            const DeepCollectionEquality()
                .equals(other.movieTopRatedList, movieTopRatedList) &&
            const DeepCollectionEquality().equals(other.movieList, movieList) &&
            const DeepCollectionEquality()
                .equals(other.movieDetail, movieDetail) &&
            const DeepCollectionEquality().equals(
                other.movieRecommendationList, movieRecommendationList) &&
            const DeepCollectionEquality()
                .equals(other.movieStatus, movieStatus) &&
            const DeepCollectionEquality()
                .equals(other.movieDetailStatus, movieDetailStatus) &&
            const DeepCollectionEquality()
                .equals(other.movieSearchStatus, movieSearchStatus) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.isAddedToWatchlist, isAddedToWatchlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieNowPlayingList),
      const DeepCollectionEquality().hash(moviePopularList),
      const DeepCollectionEquality().hash(movieTopRatedList),
      const DeepCollectionEquality().hash(movieList),
      const DeepCollectionEquality().hash(movieDetail),
      const DeepCollectionEquality().hash(movieRecommendationList),
      const DeepCollectionEquality().hash(movieStatus),
      const DeepCollectionEquality().hash(movieDetailStatus),
      const DeepCollectionEquality().hash(movieSearchStatus),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAddedToWatchlist));

  @JsonKey(ignore: true)
  @override
  _$MovieStateCopyWith<_MovieState> get copyWith =>
      __$MovieStateCopyWithImpl<_MovieState>(this, _$identity);
}

abstract class _MovieState implements MovieState {
  const factory _MovieState(
      {List<Movie> movieNowPlayingList,
      List<Movie> moviePopularList,
      List<Movie> movieTopRatedList,
      List<Movie> movieList,
      MovieDetail? movieDetail,
      List<Movie> movieRecommendationList,
      RequestState movieStatus,
      RequestState movieDetailStatus,
      RequestState movieSearchStatus,
      String message,
      bool isAddedToWatchlist}) = _$_MovieState;

  @override
  List<Movie> get movieNowPlayingList;
  @override
  List<Movie> get moviePopularList;
  @override
  List<Movie> get movieTopRatedList;
  @override
  List<Movie> get movieList;
  @override
  MovieDetail? get movieDetail;
  @override
  List<Movie> get movieRecommendationList;
  @override
  RequestState get movieStatus;
  @override
  RequestState get movieDetailStatus;
  @override
  RequestState get movieSearchStatus;
  @override
  String get message;
  @override
  bool get isAddedToWatchlist;
  @override
  @JsonKey(ignore: true)
  _$MovieStateCopyWith<_MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
