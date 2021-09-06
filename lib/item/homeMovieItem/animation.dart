import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:movie_application/widget/home_ui_items.dart';
import 'package:provider/provider.dart';

class AnimationMovie extends StatelessWidget {

  final Size size;

  AnimationMovie({required this.size});

  @override
  Widget build(BuildContext context) {
    final animationProvider = Provider.of<LimitedHomeInformationProvider>
      (context, listen: false);
    animationProvider.categoryKey = 'animation';
    animationProvider.fetchLimitedAnimationData();
    return Consumer<LimitedHomeInformationProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.animationModel.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen(
                    itemIdKey: data.animationModel[position].id,
                    directorName: data.animationModel[position].directorName,
                    genreName: data.animationModel[position].genreName,
                    published: data.animationModel[position].published,
                    movieName: data.animationModel[position].movieName,
                    movieTime: data.animationModel[position].movieTime,
                    imdbRate: data.animationModel[position].imdbRate,
                    categoryName: data.animationModel[position].categoryName,
                  )),
                );
              },
              child: HomeUIMovies(
                size: size,
                movieModel: data.animationModel[position],
              ),
            );
          },
        );
      },
    );
  }
}