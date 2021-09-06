import 'package:flutter/material.dart';
import 'package:movie_application/provider/all_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class RelatedMovie extends StatelessWidget {
  final String relatedCategoryKey;
  final Size size;

  RelatedMovie({required this.relatedCategoryKey, required this.size});

  @override
  Widget build(BuildContext context) {
    final relatedMovieProvider = Provider.of<AllHomeMovieProvider>
      (context, listen: false);
    relatedMovieProvider.categoryKey = relatedCategoryKey;
    relatedMovieProvider.fetchRelatedMovieData();

    return Consumer<AllHomeMovieProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.relatedMovieModel.isEmpty ? 0 : 4,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                print(data.relatedMovieModel[position].id);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      DetailScreen(
                        itemIdKey: data.relatedMovieModel[position].id,
                        categoryName: data.relatedMovieModel[position].categoryName,
                        imdbRate: data.relatedMovieModel[position].imdbRate,
                        genreName: data.relatedMovieModel[position].genreName,
                        published: data.relatedMovieModel[position].published,
                        directorName: data.relatedMovieModel[position].directorName,
                        movieTime: data.relatedMovieModel[position].movieTime,
                        movieName: data.relatedMovieModel[position].movieName,
                      ),
                  ),
                );
              },
              child: HomeUIMovies(
                size: size,
                movieModel: data.relatedMovieModel[position],
                //shuffleModel: data.relatedMovieModel[position],

              ),
            );
          },
        );
      },
    );
  }
}