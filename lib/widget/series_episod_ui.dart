import 'package:flutter/material.dart';
import 'package:movie_application/model/series_episode_model.dart';
import 'package:movie_application/screen/play_movie_screen.dart';

class SeriesEpisodeUI extends StatelessWidget {
  final SeriesEpisodeModel seriesEpisodeModel;
  final String episodeImage;

  SeriesEpisodeUI({
    required this.seriesEpisodeModel,
    required this.episodeImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(episodeImage),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(seriesEpisodeModel.episodeDetail,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text(seriesEpisodeModel.episodeTime,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlayMovieScreen(
                        playMovieUrlKey: seriesEpisodeModel.playUrlEpisode,),
                ),
              );
            },
            icon: Icon(
              Icons.play_circle_fill,
              color: Colors.amber,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}