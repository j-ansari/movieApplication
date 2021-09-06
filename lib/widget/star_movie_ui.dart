import 'package:flutter/material.dart';
import 'package:movie_application/model/star_model.dart';

class StarMovieUI extends StatelessWidget {

  final StarModel modelStar;
  final Size size;

  StarMovieUI({required this.modelStar, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: size.width * 0.25,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(modelStar.imageUrl),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          modelStar.starName,
          maxLines: 1,
          style: TextStyle(
            color: Colors.amber,
            fontSize: 11,
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}