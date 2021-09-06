import 'package:flutter/material.dart';

class ContentDetail extends StatelessWidget {
  final Size size;
  final String movieName;
  final String movieTime;
  final String directorName;
  final String published;
  final String genreName;
  final String imdbRate;
  final String categoryName;

  ContentDetail({
    required this.size,
    required this.movieName,
    required this.movieTime,
    required this.directorName,
    required this.published,
    required this.genreName,
    required this.imdbRate,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              movieName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  movieTime,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Director: ' + directorName,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        Text(
          categoryName == 'series' || categoryName == 'iranian_series'
              ? 'Episode Count:  ' + published
              : 'Published: ' + published,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            categoryName == 'series' || categoryName == 'iranian_series'
                ? Container(
                    alignment: Alignment.center,
                    width: size.width * 0.16,
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      genreName,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    width: size.width * 0.16,
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      genreName,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
            Container(
              alignment: Alignment.center,
              width: size.width * 0.18,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Rate: ' + imdbRate,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}