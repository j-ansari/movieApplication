import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie_application/database/favorite_adapter.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:movie_application/provider/all_home_provider.dart';
import 'package:movie_application/screen/detail_screen.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class MoreMovieScreen extends StatefulWidget {

  late final TextEditingController controller = TextEditingController();
  final String categoryKey;

  MoreMovieScreen({required this.categoryKey});

  @override
  State<StatefulWidget> createState() => _MoreMovieScreenState();
}

class _MoreMovieScreenState extends State<MoreMovieScreen> {

  HomeMovieInformationModel? allMovieModel;
  bool isFavorite = false;
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    final allMovieProvider = Provider.of<AllHomeMovieProvider>
      (context, listen: false);
    allMovieProvider.categoryKey = widget.categoryKey;
    allMovieProvider.searchKey = '&&movie_name=' + widget.controller.text;
    allMovieProvider.fetchAllMovieData();

    return Consumer<AllHomeMovieProvider>(
      builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: TextField(
              onChanged: (value) {
                setState(() {
                  widget.controller.text = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'type a part of movie name here...',
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.allHomeMovieModel.length,
              itemBuilder: (context, position) {
                allMovieModel = data.allHomeMovieModel[position];
                Box<FavoriteModel> modelBox =
                Hive.box<FavoriteModel>(FAVORITE_MOVIE);

                FavoriteModel favoriteModel = FavoriteModel(
                  movieName: data.allHomeMovieModel[position].movieName,
                  imageUrl: data.allHomeMovieModel[position].imageUrl,
                  directorName: data.allHomeMovieModel[position].directorName,
                  published: data.allHomeMovieModel[position].published,
                  movieTime: data.allHomeMovieModel[position].movieTime,
                );
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          DetailScreen(
                            itemIdKey: data.allHomeMovieModel[position].id,
                            directorName: data.allHomeMovieModel[position]
                                .directorName,
                            published: data.allHomeMovieModel[position]
                                .published,
                            genreName: data.allHomeMovieModel[position]
                                .genreName,
                            movieName: data.allHomeMovieModel[position]
                                .movieName,
                            movieTime: data.allHomeMovieModel[position]
                                .movieTime,
                            imdbRate: data.allHomeMovieModel[position].imdbRate,
                            categoryName: data.allHomeMovieModel[position]
                                .categoryName,
                          ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width,
                    height: size.height * 0.2,
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
                                    width: size.width,
                                    height: size.height * 0.6,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            allMovieModel!.imageUrl),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: size.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(allMovieModel!.imageUrl),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            allMovieModel!.movieName.length < 15
                                ? fullMovieName()
                                : limitedMovieName(),
                            SizedBox(height: 5),
                            Text(
                              'Director: ' + allMovieModel!.directorName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            allMovieModel!.genreName.isEmpty
                                ? episodeCount()
                                : published(),
                            SizedBox(height: size.height * 0.07),
                            Row(
                              children: [
                                Icon(allMovieModel!.genreName.isEmpty
                                    ? Icons.folder_special_sharp
                                    : Icons.timer,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  allMovieModel!.movieTime,
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 11,
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
                                margin: EdgeInsets.only(
                                  top: 10, right: 10, left: 5,),
                                width: size.width * 0.18,
                                height: size.height * 0.035,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  'IMDb: ' + allMovieModel!.imdbRate,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (modelBox.containsKey(data.allHomeMovieModel[position].id)) {
                                            modelBox.delete(data.allHomeMovieModel[position].id);
                                          } else {
                                            modelBox.put(data.allHomeMovieModel[position].id, favoriteModel);
                                          }
                                        });
                                      },
                                      child: Icon(modelBox.containsKey(
                                          data.allHomeMovieModel[position].id)
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                        color: Colors.red,
                                      ),
                                    ),
                                    allMovieModel!.imdbRank.isEmpty
                                        ? genreName(size)
                                        : imdbRank(size),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget fullMovieName() {
    return Text(
      allMovieModel!.movieName,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget limitedMovieName() {
    return Text(
      allMovieModel!.movieName.substring(0, 15) + '...',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget episodeCount() {
    return Text(
      'Episode Count:  ' + allMovieModel!.published,
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
      ),
    );
  }

  Widget published() {
    return Text(
      'Published: ' + allMovieModel!.published,
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
      ),
    );
  }

  Widget genreName(size) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 8, right: 10),
      width: size.width * 0.15,
      height: size.height * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Text(
        allMovieModel!.genreName,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget imdbRank(size) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 8, right: 10),
      width: size.width * 0.13,
      height: size.height * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Text(
        'Rank: ' + allMovieModel!.imdbRank,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}