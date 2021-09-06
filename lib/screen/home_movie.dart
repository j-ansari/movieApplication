import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/item/homeMovieItem/animation.dart';
import 'package:movie_application/item/homeMovieItem/drawer_menu.dart';
import 'package:movie_application/item/homeMovieItem/iranian_movie.dart';
import 'package:movie_application/item/homeMovieItem/iranian_series.dart';
import 'package:movie_application/item/homeMovieItem/movie_genre.dart';
import 'package:movie_application/item/homeMovieItem/new_movie.dart';
import 'package:movie_application/item/homeMovieItem/series_movie.dart';
import 'package:movie_application/item/homeMovieItem/show_slider.dart';
import 'package:movie_application/item/homeMovieItem/top_imdb.dart';
import 'package:movie_application/screen/more_movie_screen.dart';
import 'package:movie_application/screen/search_screen.dart';
import 'package:movie_application/widget/category_name.dart';

class HomeMovieApplication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeMovieApplicationState();
}

class _HomeMovieApplicationState extends State<HomeMovieApplication> {
  DateTime? currentBackPressTime;

  _navigator(BuildContext context, Widget page) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => page,
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          content: Text('double tape to exit'),
        ),
      );
      return Future.value(false);
    }
    return Future.value(true);
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff211421),
          title: Text('Home',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen())
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 20),
              icon: Icon(Icons.search),
            ),
          ],
        ),
        drawer: DrawerMenu(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SliderMovie(),
            SizedBox(height: size.height * 0.01,),
            SizedBox(
              width: size.width,
              height: size.height * 0.05,
              child: GenreMovie(size: size),
            ),
            CategoryName(
              categoryName: 'Top IMDb Movie',
              onPress: () {
                _navigator(context, MoreMovieScreen(
                  categoryKey: 'top_movie_imdb',
                ),
                );
              },
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.27,
              child: TopIMDbMovie(size: size),
            ),
            CategoryName(
              categoryName: 'New Movie',
              onPress: () {
                _navigator(context, MoreMovieScreen(
                  categoryKey: 'new_movie',
                ),
                );
              },
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.27,
              child: NewMovie(size: size),
            ),
            CategoryName(
              categoryName: 'Series',
              onPress: () {
                _navigator(context, MoreMovieScreen(
                  categoryKey: 'series',
                ),
                );
              },
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.27,
              child: SeriesMovie(size: size),
            ),
            CategoryName(
              categoryName: 'Iranian Movie',
              onPress: () {
                _navigator(context, MoreMovieScreen(
                  categoryKey: 'iranian_movie',
                ),
                );
              },
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.27,
              child: IranianMovie(size: size),
            ),

            CategoryName(
              categoryName: 'Iranian Series',
              onPress: () {
                _navigator(context, MoreMovieScreen(
                  categoryKey: 'iranian_series',
                ),
                );
              },
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.27,
              child: IranianSeries(size: size),
            ),
            CategoryName(
              categoryName: 'Animation',
              onPress: () {
                _navigator(context, MoreMovieScreen(
                  categoryKey: 'animation',
                ),
                );
              },
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.27,
              child: AnimationMovie(size: size),
            ),
          ],
        ),
      ),
    );
  }
}