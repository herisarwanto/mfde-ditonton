import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_bloc.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NowPlayingTvSeriesPage extends StatefulWidget {
  static const ROUTE_NAME = '/now-playing-tv-series';

  @override
  State<NowPlayingTvSeriesPage> createState() => _NowPlayingTvSeriesPageState();
}

class _NowPlayingTvSeriesPageState extends State<NowPlayingTvSeriesPage> {
  late TvSeriesBloc _tvSeriesBloc;

  @override
  void initState() {
    super.initState();
    _tvSeriesBloc = BlocProvider.of(context);
    _tvSeriesBloc.add(TvSeriesEvent.tvSeriesNowPlayingFetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing Tv Series'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TvSeriesBloc, TvSeriesState>(
          builder: (context, state) {
            final status = state.tvSeriesStatus;
            if (status == RequestState.Loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (status == RequestState.Loaded) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  final tv = state.tvSeriesNowPlayingList[index];
                  return TvSeriesCard(tv);
                },
                itemCount: state.tvSeriesNowPlayingList.length,
              );
            } else {
              return Center(
                key: Key('error_message'),
                child: Text(state.message),
              );
            }
          },
        ),
      ),
    );
  }
}
