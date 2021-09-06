import 'package:flutter/material.dart';
import 'package:movie_application/provider/star_provider.dart';
import 'package:movie_application/widget/star_movie_ui.dart';
import 'package:provider/provider.dart';

class MovieStarDetail extends StatefulWidget {
  final idKey;
  final Size size;

  MovieStarDetail({required this.idKey, required this.size});

  @override
  State<StatefulWidget> createState() => _MovieStarDetailState();

}

class _MovieStarDetailState extends State<MovieStarDetail> {

 late StarProvider starProvider;

  @override
  void initState() {
    super.initState();

    starProvider = Provider.of<StarProvider>(context, listen: false);
    starProvider.itemIdKey = widget.idKey;
    starProvider.fetchMovieStarData();
  }

  @override
  void dispose() {
    if(starProvider.starModel.isEmpty){
      starProvider.dispose();
    }
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Consumer<StarProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.starModel.length,
          itemBuilder: (context, position) {
            return StarMovieUI(
              modelStar: data.starModel[position],
              size: widget.size,
            );
          },
        );
      },
    );
  }
}