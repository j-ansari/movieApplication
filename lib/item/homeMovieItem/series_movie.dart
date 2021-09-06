import 'package:flutter/material.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class SeriesMovie extends StatelessWidget {
  final Size size;

  SeriesMovie({required this.size});

  @override
  Widget build(BuildContext context) {
    final seriesProvider = Provider.of<LimitedHomeInformationProvider>
      (context, listen: false);
    seriesProvider.categoryKey = 'series';
    seriesProvider.fetchLimitedSeriesData();

    return Consumer<LimitedHomeInformationProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.seriesModel.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(
                          movieName: data.seriesModel[position].movieName,
                          movieTime: data.seriesModel[position].movieTime,
                          directorName: data.seriesModel[position].directorName,
                          published: data.seriesModel[position].published,
                          genreName: data.seriesModel[position].genreName,
                          imdbRate: data.seriesModel[position].imdbRate,
                          itemIdKey: data.seriesModel[position].id,
                          categoryName: data.seriesModel[position].categoryName,
                        ),
                  ),
                );
              },
              child: HomeUIMovies(
                size: size,
                movieModel: data.seriesModel[position],
              ),
            );
          },
        );
      },
    );
  }
}
