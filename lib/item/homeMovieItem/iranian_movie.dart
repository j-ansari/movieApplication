import 'package:flutter/material.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class IranianMovie extends StatelessWidget {
  final Size size;

  IranianMovie({required this.size});

  @override
  Widget build(BuildContext context) {
    final topIMDbProvider = Provider.of<LimitedHomeInformationProvider>
      (context, listen: false);
    topIMDbProvider.categoryKey = 'iranian_movie';
    topIMDbProvider.fetchLimitedIranianMovieData();

    return Consumer<LimitedHomeInformationProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          itemCount: data.iranianMovieModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen(
                    itemIdKey: data.iranianMovieModel[position].id,
                    directorName: data.iranianMovieModel[position].directorName,
                    genreName: data.iranianMovieModel[position].genreName,
                    published: data.iranianMovieModel[position].published,
                    movieName: data.iranianMovieModel[position].movieName,
                    movieTime: data.iranianMovieModel[position].movieTime,
                    imdbRate: data.iranianMovieModel[position].imdbRate,
                    categoryName: data.iranianMovieModel[position].categoryName,
                  )),
                );
              },
              child: HomeUIMovies(
                size: size,
                movieModel: data.iranianMovieModel[position],
              ),
            );
          },
        );
      },
    );
  }
}