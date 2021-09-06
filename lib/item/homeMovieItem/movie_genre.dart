import 'package:flutter/material.dart';
import 'package:movie_application/provider/genre_provider.dart';
import 'package:movie_application/screen/genre_screen.dart';
import 'package:movie_application/widget/genre_ui.dart';
import 'package:provider/provider.dart';

class GenreMovie extends StatelessWidget {
  final Size size;

  GenreMovie({required this.size});

  @override
  Widget build(BuildContext context) {
    final genreProvider = Provider.of<GenreProvider>(context, listen: false);
    genreProvider.fetchGenreData();

    return Consumer<GenreProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.genreModel.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      GenreScreen(
                        genreCategoryKey: data.genreModel[position].genreName,
                      ),
                  ),
                );
              },
              child: GenreUI(
                size: size,
                genreModel: data.genreModel[position],
              ),
            );
          },
        );
      },
    );
  }
}