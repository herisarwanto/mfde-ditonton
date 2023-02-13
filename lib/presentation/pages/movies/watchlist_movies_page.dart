import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/common/utils.dart';
import 'package:ditonton/presentation/bloc/movie/movie_bloc.dart';
import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistMoviesPage extends StatefulWidget {
  static const ROUTE_NAME = '/watchlist-movie';

  @override
  _WatchlistMoviesPageState createState() => _WatchlistMoviesPageState();
}

class _WatchlistMoviesPageState extends State<WatchlistMoviesPage>
    with RouteAware {
  late MovieBloc _movieBloc;

  @override
  void initState() {
    super.initState();
    _movieBloc = BlocProvider.of(context);
    _movieBloc.add(MovieEvent.movieWatchlistFetch());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  void didPopNext() {
    _movieBloc.add(MovieEvent.movieWatchlistFetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watchlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            final status = state.movieSearchStatus;
            if (status == RequestState.Loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (status == RequestState.Loaded) {
              return state.movieList.length > 0
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        final movie = state.movieList[index];
                        return MovieCard(movie);
                      },
                      itemCount: state.movieList.length,
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
