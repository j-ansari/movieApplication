import 'package:flutter/material.dart';
import 'package:movie_application/model/genre_model.dart';

class GenreUI extends StatelessWidget {
  final Size size;
  final GenreModel genreModel;

  GenreUI({
    required this.size,
    required this.genreModel
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width * 0.2,
            height: size.height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[900],
            ),
          ),
        ),
        Text(genreModel.genreName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}