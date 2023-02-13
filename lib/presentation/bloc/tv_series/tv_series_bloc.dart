import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_event.dart';
part 'tv_series_state.dart';
part 'tv_series_bloc.freezed.dart';

class TvSeriesBloc extends Bloc<TvSeriesEvent, TvSeriesState> {
  TvSeriesBloc() : super(const TvSeriesState.initial()) {
    on<TvSeriesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
