import 'package:flutter/material.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:movie_application/screen/detail_screen.dart';

class SearchUI extends StatelessWidget {
  final HomeMovieInformationModel searchModel;

  SearchUI({required this.searchModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>
                  DetailScreen(
                    movieName: searchModel.movieName,
                    movieTime: searchModel.movieTime,
                    directorName: searchModel.directorName,
                    published: searchModel.published,
                    genreName: searchModel.genreName,
                    imdbRate: searchModel.imdbRate,
                    itemIdKey: searchModel.id,
                    categoryName: searchModel.categoryName,
                  ),
              ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(searchModel.imageUrl),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(searchModel.movieName,
            maxLines: 1,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}