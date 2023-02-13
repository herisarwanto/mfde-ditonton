import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/domain/entities/tv_series/tv_series.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_bloc.dart';
import 'package:ditonton/presentation/pages/search_page.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/pages/tv_series/now_playing_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/popular_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/top_rated_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/tv_series_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTvSeriesPage extends StatefulWidget {
  static const ROUTE_NAME = '/home-tv-series';

  @override
  _HomeTvSeriesPageState createState() => _HomeTvSeriesPageState();
}

class _HomeTvSeriesPageState extends State<HomeTvSeriesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tv Series'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SearchPage.ROUTE_NAME,
                  arguments: false);
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSubHeading(
                  title: 'Now Playing',
                  onTap: () => Navigator.pushNamed(
                      context, NowPlayingTvSeriesPage.ROUTE_NAME)),
              BlocBuilder<TvSeriesBloc, TvSeriesState>(
                  builder: (context, state) {
                final status = state.tvSeriesStatus;
                if (status == RequestState.Loading) {
                  return Center(child: CircularProgressIndicator());
                } else if (status == RequestState.Loaded) {
                  return TvSeriesList(state.tvSeriesNowPlayingList);
                } else {
                  return Text(ERROR_MESSAGE);
                }
              }),
              _buildSubHeading(
                title: 'Popular',
                onTap: () => Navigator.pushNamed(
                    context, PopularTvSeriesPage.ROUTE_NAME),
              ),
              BlocBuilder<TvSeriesBloc, TvSeriesState>(
                  builder: (context, state) {
                final status = state.tvSeriesStatus;
                if (status == RequestState.Loading) {
                  return Center(child: CircularProgressIndicator());
                } else if (status == RequestState.Loaded) {
                  return TvSeriesList(state.tvSeriesPopularList);
                } else {
                  return Text(ERROR_MESSAGE);
                }
              }),
              _buildSubHeading(
                title: 'Top Rated',
                onTap: () => Navigator.pushNamed(
                    context, TopRatedTvSeriesPage.ROUTE_NAME),
              ),
              BlocBuilder<TvSeriesBloc, TvSeriesState>(
                  builder: (context, state) {
                final status = state.tvSeriesStatus;
                if (status == RequestState.Loading) {
                  return Center(child: CircularProgressIndicator());
                } else if (status == RequestState.Loaded) {
                  return TvSeriesList(state.tvSeriesTopRatedList);
                } else {
                  return Text(ERROR_MESSAGE);
                }
              }),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSubHeading({required String title, required Function() onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kHeading6,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [Text('See More'), Icon(Icons.arrow_forward_ios)],
            ),
          ),
        ),
      ],
    );
  }
}

class TvSeriesList extends StatelessWidget {
  final List<TvSeries> tvSeries;

  TvSeriesList(this.tvSeries);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final tv = tvSeries[index];
          return Container(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  TvSeriesDetailPage.ROUTE_NAME,
                  arguments: tv.id,
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: CachedNetworkImage(
                  imageUrl: '$BASE_IMAGE_URL${tv.posterPath}',
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          );
        },
        itemCount: tvSeries.length,
      ),
    );
  }
}
