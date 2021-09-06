import 'package:flutter/material.dart';
import 'package:movie_application/model/home_movie_information.dart';

class HomeUIMovies extends StatelessWidget {
  final Size size;
  final HomeMovieInformationModel movieModel;

  HomeUIMovies({required this.size, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: size.width * 0.27,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(movieModel.imageUrl),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                movieModel.movieName,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                children: [
                  movieModel.genreName.isEmpty
                  ?Icon(
                    Icons.folder_special_sharp,
                    size: 20,
                    color: Colors.amber,
                  )
                  :Icon(
                    Icons.timer,
                    size: 20,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: size.height * 0.01,
                  ),
                  Text(
                    movieModel.movieTime,
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        movieModel.imdbRank.isNotEmpty
            ? Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 7),
                alignment: Alignment.center,
                width: size.width * 0.13,
                height: size.height * 0.04,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(
                  'Rank: ' + movieModel.imdbRank,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
