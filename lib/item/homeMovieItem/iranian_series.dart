import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class IranianSeries extends StatelessWidget {
  final Size size;

  IranianSeries({required this.size});

  @override
  Widget build(BuildContext context) {
    final newMovieProvider = Provider.of<LimitedHomeInformationProvider>
      (context, listen: false);
    newMovieProvider.categoryKey = 'iranian_series';
    newMovieProvider.fetchLimitedIranianSeriesData();

    return Consumer<LimitedHomeInformationProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.iranianSeriesModel.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      DetailScreen(
                        itemIdKey: data.iranianSeriesModel[position].id,
                        imdbRate: data.iranianSeriesModel[position].imdbRate,
                        genreName: data.iranianSeriesModel[position].genreName,
                        published: data.iranianSeriesModel[position].published,
                        directorName: data.iranianSeriesModel[position].directorName,
                        movieTime: data.iranianSeriesModel[position].movieTime,
                        movieName: data.iranianSeriesModel[position].movieName,
                        categoryName: data.iranianSeriesModel[position].categoryName,
                      ),
                  ),
                );
              },
              child: HomeUIMovies(
                size: size,
                movieModel: data.iranianSeriesModel[position],
              ),
            );
          },
        );
      },
    );
  }
}