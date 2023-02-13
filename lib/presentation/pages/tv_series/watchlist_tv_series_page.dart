import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/common/utils.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_bloc.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistTvSeriesPage extends StatefulWidget {
  static const ROUTE_NAME = '/watchlist-tv-series';

  @override
  _WatchlistTvSeriesPageState createState() => _WatchlistTvSeriesPageState();
}

class _WatchlistTvSeriesPageState extends State<WatchlistTvSeriesPage>
    with RouteAware {
  late TvSeriesBloc _tvSeriesBloc;

  @override
  void initState() {
    super.initState();
    _tvSeriesBloc = BlocProvider.of(context);
    _tvSeriesBloc.add(TvSeriesEvent.tvSeriesWatchlistFetch());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  void didPopNext() {
    _tvSeriesBloc.add(TvSeriesEvent.tvSeriesWatchlistFetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watchlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TvSeriesBloc, TvSeriesState>(
          builder: (context, state) {
            final status = state.tvSeriesSearchStatus;
            if (status == RequestState.Loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (status == RequestState.Loaded) {
              return state.tvSeriesList.length > 0
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        final tv = state.tvSeriesList[index];
                        return TvSeriesCard(tv);
                      },
                      itemCount: state.tvSeriesList.length,
                    )
                  : Center(
                      child: Text('No Data'),
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

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
