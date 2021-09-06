import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie_application/database/favorite_adapter.dart';
import 'package:movie_application/main.dart';
import 'package:hive_flutter/hive_flutter.dart';


class FavoriteScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FavoriteScreenState();

}


class _FavoriteScreenState extends State<FavoriteScreen> {
  FavoriteModel? model;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff211421),
        title: Text('Favorite List',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<FavoriteModel>(FAVORITE_MOVIE).listenable(),
        builder: (context, Box<FavoriteModel> box, _) {
          if (box.values.isEmpty) {
            return Center(
              child: Text('Nothing',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }
         // List fave = List.from(box.values);

          return ListView.builder(
            itemCount: box.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, position) {
              model = box.getAt(position);
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(10),
                    width: size.width * 0.6,
                    height: size.height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(model!.imageUrl),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            box.deleteAt(position);
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      model!.movieTime,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              );
            },
          );

        },
      ),
    );
  }
}



/*

return ListView(
            children: [
              ...fave.map(
                    (favorites) =>
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.all(10),
                          width: size.width * 0.6,
                          height: size.height * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(favorites.imageUrl),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  //   box.deleteAt(position);
                                  box.delete(favorites.movieName);
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            favorites.movieTime,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
              ),
            ],
          );

 */