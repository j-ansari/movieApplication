import 'package:flutter/material.dart';
import 'package:movie_application/provider/series_episode_provider.dart';
import 'package:movie_application/widget/series_episod_ui.dart';
import 'package:provider/provider.dart';

class EpisodeScreen extends StatelessWidget {
  final String episodeKey;
  final String seriesEpisodeImage;

  EpisodeScreen({
    required this.episodeKey,
    required this.seriesEpisodeImage,
  });

  @override
  Widget build(BuildContext context) {
    final episodeProvider = Provider.of<SeriesEpisodeProvider>
      (context, listen: false);
    episodeProvider.seriesEpisodeKey = episodeKey;
    episodeProvider.fetchSeriesEpisodeData();

    return Consumer<SeriesEpisodeProvider>(
      builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color(0xff211421),
            title: Text('Episodes',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2/2.7,
            ),
            scrollDirection: Axis.vertical,
            itemCount: data.episodeModel.length,
            itemBuilder: (context, position) {
              return SeriesEpisodeUI(
                seriesEpisodeModel: data.episodeModel[position],
                episodeImage: seriesEpisodeImage,
              );
            },
          ),
        );
      },
    );
  }
}