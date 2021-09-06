import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie_application/database/favorite_adapter.dart';
import 'package:movie_application/main.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MoreMovieUI extends StatefulWidget{
  final Size size;
  final HomeMovieInformationModel allMovieModel;
  final int index;

  MoreMovieUI({required this.size, required this.allMovieModel, required this.index});

  @override
  State<StatefulWidget> createState() => _MoreMovieUIState();
}

class _MoreMovieUIState extends State<MoreMovieUI> {

  bool isFavorite = false;

  FavoriteModel? favoriteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: widget.size.width,
      height: widget.size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.black.withOpacity(0),
                    elevation: 10,
                    content: Container(
                      width: widget.size.width,
                      height: widget.size.height * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.allMovieModel.imageUrl),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              width: widget.size.width * 0.25,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.allMovieModel.imageUrl),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              widget.allMovieModel.movieName.length < 20
                  ? fullMovieName()
                  : limitedMovieName(),
              SizedBox(height: 5),
              Text(
                'Director: ' + widget.allMovieModel.directorName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
              widget.allMovieModel.genreName.isEmpty
                  ? episodeCount()
                  : published(),
              SizedBox(height: widget.size.height * 0.07),
              Row(
                children: [
                  widget.allMovieModel.genreName.isEmpty
                      ? Icon(Icons.folder_special_sharp, color: Colors.amber)
                      : Icon(Icons.timer, color: Colors.amber),
                  SizedBox(width: 5),
                  Text(
                    widget.allMovieModel.movieTime,
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, right: 10, left: 5),
                  width: widget.size.width * 0.18,
                  height: widget.size.height * 0.035,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    'IMDb: ' + widget.allMovieModel.imdbRate,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          Box<FavoriteModel> modelBox =
                          Hive.box<FavoriteModel>(FAVORITE_MOVIE);
                          if(isFavorite == false){
                            modelBox.add(
                              FavoriteModel(
                                movieName: widget.allMovieModel.movieName,
                                imageUrl: widget.allMovieModel.imageUrl,
                                directorName: widget.allMovieModel.directorName,
                                published: widget.allMovieModel.published,
                                movieTime: widget.allMovieModel.movieTime,
                              ),
                            );
                            setState(() {
                              isFavorite = true;
                            });
                          } else {
                            modelBox.deleteAt(widget.index);
                            setState(() {
                              isFavorite = false;
                            });
                          }
                        },
                        child: Icon( isFavorite == false
                              ? Icons.favorite_border
                              : Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      widget.allMovieModel.imdbRank.isEmpty
                          ? genreName()
                          : imdbRank(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget fullMovieName() {
    return Text(
      widget.allMovieModel.movieName,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget limitedMovieName() {
    return Text(
      widget.allMovieModel.movieName.substring(0, 20) + '...',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget episodeCount() {
    return Text(
      'Episode Count:  ' + widget.allMovieModel.published,
      style: TextStyle(
        color: Colors.white,
        fontSize: 11,
      ),
    );
  }

  Widget published() {
    return Text(
      'Published: ' + widget.allMovieModel.published,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }

  Widget genreName() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 8, right: 10),
      width: widget.size.width * 0.15,
      height: widget.size.height * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Text(
        widget.allMovieModel.genreName,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget imdbRank() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 8, right: 10),
      width: widget.size.width * 0.13,
      height: widget.size.height * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Text(
        'Rank: ' + widget.allMovieModel.imdbRank,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}