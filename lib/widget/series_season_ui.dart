import 'package:flutter/material.dart';
import 'package:movie_application/model/series_season_model.dart';
import 'package:movie_application/screen/episode_screen.dart';

class SeriesSeasonUI extends StatelessWidget {
  final SeriesSeasonModel seasonModel;

  SeriesSeasonUI({required this.seasonModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)
          => EpisodeScreen(
            episodeKey: seasonModel.id,
            seriesEpisodeImage: seasonModel.imageUrl,
          ),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: AspectRatio(
              aspectRatio: 3 / 3.5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(seasonModel.imageUrl),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Season: ' + seasonModel.seasonNumber,
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Episode Count: ' + seasonModel.episodeCount,
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}