import 'package:flutter/material.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class TopIMDbMovie extends StatelessWidget {
  final Size size;

  TopIMDbMovie({required this.size});

  @override
  Widget build(BuildContext context) {
    final topIMDbProvider = Provider.of<LimitedHomeInformationProvider>
      (context, listen: false);
    topIMDbProvider.categoryKey = 'top_movie_imdb';
    topIMDbProvider.fetchLimitedTopIMDbData();

    return Consumer<LimitedHomeInformationProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          itemCount: data.topIMDbModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen(
                    itemIdKey: data.topIMDbModel[position].id,
                    directorName: data.topIMDbModel[position].directorName,
                    genreName: data.topIMDbModel[position].genreName,
                    published: data.topIMDbModel[position].published,
                    movieName: data.topIMDbModel[position].movieName,
                    movieTime: data.topIMDbModel[position].movieTime,
                    imdbRate: data.topIMDbModel[position].imdbRate,
                    categoryName: data.topIMDbModel[position].categoryName,
                  )),
                );
              },
              child: HomeUIMovies(
                  size: size,
                  movieModel: data.topIMDbModel[position],
              ),
            );
          },
        );
      },
    );
  }
}