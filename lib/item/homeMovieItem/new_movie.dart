import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class NewMovie extends StatelessWidget {
  final Size size;

  NewMovie({required this.size});

  @override
  Widget build(BuildContext context) {
    final newMovieProvider = Provider.of<LimitedHomeInformationProvider>
      (context, listen: false);
    newMovieProvider.categoryKey = 'new_movie';
    newMovieProvider.fetchLimitedNewMovieData();

    return Consumer<LimitedHomeInformationProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.newMovieModel.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      DetailScreen(
                        itemIdKey: data.newMovieModel[position].id,
                        imdbRate: data.newMovieModel[position].imdbRate,
                        genreName: data.newMovieModel[position].genreName,
                        published: data.newMovieModel[position].published,
                        directorName: data.newMovieModel[position].directorName,
                        movieTime: data.newMovieModel[position].movieTime,
                        movieName: data.newMovieModel[position].movieName,
                        categoryName: data.newMovieModel[position].categoryName,
                      ),
                  ),
                );
              },
              child: HomeUIMovies(
                size: size,
                movieModel: data.newMovieModel[position],
              ),
            );
          },
        );
      },
    );
  }
}