import 'package:flutter/material.dart';
import 'package:movie_application/model/home_movie_information.dart';

class GenreCategoryUI extends StatelessWidget {

  final HomeMovieInformationModel categoryModel;

  GenreCategoryUI({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(categoryModel.imageUrl),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            categoryModel.movieName,
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}