import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series_detail.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TvSeriesDetailPage extends StatefulWidget {
  static const ROUTE_NAME = '/detail-tv-series';

  final int id;

  TvSeriesDetailPage({required this.id});

  @override
  _TvSeriesDetailPageState createState() => _TvSeriesDetailPageState();
}

class _TvSeriesDetailPageState extends State<TvSeriesDetailPage> {
  late TvSeriesBloc _tvSeriesBloc;

  @override
  void initState() {
    super.initState();
    _tvSeriesBloc = BlocProvider.of(context);
    _tvSeriesBloc
      ..add(TvSeriesEvent.tvSeriesDetailFetch(id: widget.id))
      ..add(TvSeriesEvent.tvSeriesWatchlistStatusLoad(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<TvSeriesBloc, TvSeriesState>(
        listener: (context, state) {
          final message = state.message;
          if (message == WATCHLIST_SUCCESS_ADDED_MESSAGE ||
              message == WATCHLIST_SUCCESS_REMOVED_MESSAGE) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          }
        },
        child: BlocBuilder<TvSeriesBloc, TvSeriesState>(
          builder: (context, state) {
            final status = state.tvSeriesDetailStatus;
            if (status == RequestState.Loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (status == RequestState.Loaded) {
              if (state.tvSeriesDetail == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return SafeArea(
                  child: DetailContent(
                _tvSeriesBloc,
                state.tvSeriesDetail!,
                state.tvSeriesRecommendationList,
                state.isAddedToWatchlist,
              ));
            } else {
              return Text(state.message);
            }
          },
        ),
      ),
    );
  }
}

class DetailContent extends StatelessWidget {
  final TvSeriesBloc tvSeriesBloc;
  final TvSeriesDetail tvSeries;
  final List<TvSeries> recommendations;
  final bool isAddedWatchlist;

  DetailContent(this.tvSeriesBloc, this.tvSeries, this.recommendations,
      this.isAddedWatchlist);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: 'https://image.tmdb.org/t/p/w500${tvSeries.posterPath}',
          width: screenWidth,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        Container(
          margin: const EdgeInsets.only(top: 48 + 8),
          child: DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: kRichBlack,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tvSeries.name,
                              style: kHeading5,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                if (!isAddedWatchlist) {
                                  tvSeriesBloc.add(
                                      TvSeriesEvent.tvSeriesAddWatclistPressed(
                                          tvSeriesDetail: tvSeries));
                                } else {
                                  tvSeriesBloc.add(TvSeriesEvent
                                      .tvSeriesRemoveFromWatchlistPressed(
                                          tvSeriesDetail: tvSeries));
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  isAddedWatchlist
                                      ? Icon(Icons.check)
                                      : Icon(Icons.add),
                                  Text('Watchlist'),
                                ],
                              ),
                            ),
                            Text(
                              _showGenres(tvSeries.genres),
                            ),
                            Text(
                              _showDuration(10),
                            ),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: tvSeries.voteAverage / 2,
                                  itemCount: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: kMikadoYellow,
                                  ),
                                  itemSize: 24,
                                ),
                                Text('${tvSeries.voteAverage}')
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Overview',
                              style: kHeading6,
                            ),
                            Text(
                              tvSeries.overview,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Recommendations',
                              style: kHeading6,
                            ),
                            BlocBuilder<TvSeriesBloc, TvSeriesState>(
                              builder: (context, state) {
                                final status = state.tvSeriesDetailStatus;
                                if (status == RequestState.Loading) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (status == RequestState.Error) {
                                  return Text(state.message);
                                } else if (status == RequestState.Loaded) {
                                  return Container(
                                    height: 150,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        final tv = recommendations[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(
                                                context,
                                                TvSeriesDetailPage.ROUTE_NAME,
                                                arguments: tv.id,
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                'https://image.tmdb.org/t/p/w500${tv.posterPath}',
                                                placeholder: (context, url) =>
                                                    Center(
                                                      child:
                                                      CircularProgressIndicator(),
                                                    ),
                                                errorWidget:
                                                    (context, url, error) =>
                                                    Icon(Icons.error),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: recommendations.length,
                                    ),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.white,
                        height: 4,
                        width: 48,
                      ),
                    ),
                  ],
                ),
              );
            },
            // initialChildSize: 0.5,
            minChildSize: 0.25,
            // maxChildSize: 1.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: kRichBlack,
            foregroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],
    );
  }

  String _showGenres(List<Genre> genres) {
    String result = '';
    for (var genre in genres) {
      result += genre.name + ', ';
    }

    if (result.isEmpty) {
      return result;
    }

    return result.substring(0, result.length - 2);
  }

  String _showDuration(int runtime) {
    final int hours = runtime ~/ 60;
    final int minutes = runtime % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }
}
