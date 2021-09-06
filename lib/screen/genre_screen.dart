import 'package:flutter/material.dart';
import 'package:movie_application/provider/genre_category_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/genre_category_ui.dart';
import 'package:provider/provider.dart';

class GenreScreen extends StatelessWidget {
  final String genreCategoryKey;

  GenreScreen({required this.genreCategoryKey});

  @override
  Widget build(BuildContext context) {
    final genreCategoryProvider =
    Provider.of<GenreCategoryProvider>(context, listen: false);
    genreCategoryProvider.genreCategoryKeyUrl = genreCategoryKey;
    genreCategoryProvider.fetchGenreCategoryData();

    return Consumer<GenreCategoryProvider>(
      builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color(0xff211421),
            title: Text(
              'Genre Category',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: data.genreCategoryModel.isEmpty ? Center(
            child: Text('Nothing Movie to this Category',
              style: TextStyle(color: Colors.amber),
            ),
          ) : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            scrollDirection: Axis.vertical,
            itemCount: data.genreCategoryModel.length,
            itemBuilder: (context, position) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        DetailScreen(
                          categoryName: data.genreCategoryModel[position]
                              .categoryName,
                          movieName: data.genreCategoryModel[position]
                              .movieName,
                          movieTime: data.genreCategoryModel[position]
                              .movieTime,
                          published: data.genreCategoryModel[position]
                              .published,
                          genreName: data.genreCategoryModel[position]
                              .genreName,
                          imdbRate: data.genreCategoryModel[position].imdbRate,
                          directorName: data.genreCategoryModel[position]
                              .directorName,
                          itemIdKey: data.genreCategoryModel[position].id,
                        ),
                    ),
                  );
                },
                child: GenreCategoryUI(
                  categoryModel: data.genreCategoryModel[position],
                ),
              );
            },
          ),
        );
      },
    );
  }
}