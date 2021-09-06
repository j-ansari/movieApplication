import 'package:flutter/material.dart';
import 'package:movie_application/provider/series_season_provider.dart';
import 'package:movie_application/widget/series_season_ui.dart';
import 'package:provider/provider.dart';

class EpisodeSeriesDetail extends StatefulWidget{
  final String seriesSeasonItemIdKey;

  EpisodeSeriesDetail({required this.seriesSeasonItemIdKey});

  @override
  State<StatefulWidget> createState() => _EpisodeSeriesDetailState();
}

class _EpisodeSeriesDetailState extends State<EpisodeSeriesDetail> {
  late SeriesSeasonProvider seasonProvider;

  @override
  void initState() {
    super.initState();
    seasonProvider = Provider.of<SeriesSeasonProvider>(context, listen: false);
    seasonProvider.seriesItemIdKey = widget.seriesSeasonItemIdKey;
    seasonProvider.fetchSeriesSeasonData();
  }

  @override
  void dispose() {
    if (seasonProvider.seriesSeasonModel.isEmpty) {
      seasonProvider.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final seriesProvider = Provider.of<SeriesSeasonProvider>(context, listen: false);
    // seriesProvider.seriesItemIdKey = widget.seriesSeasonItemIdKey;
    // seriesProvider.fetchSeriesSeasonData();
    return Consumer<SeriesSeasonProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.seriesSeasonModel.length,
          itemBuilder: (context, position) {
            return SeriesSeasonUI(
              seasonModel: data.seriesSeasonModel[position],
            );
          },
        );
      },
    );
  }
}