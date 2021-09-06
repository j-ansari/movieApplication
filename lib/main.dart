import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:movie_application/provider/buy_account_provider.dart';
import 'package:movie_application/provider/comments_provider.dart';
import 'package:movie_application/provider/send_comment_provider.dart';
import 'package:movie_application/screen/splash_screen.dart';
import 'package:movie_application/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_application/database/favorite_adapter.dart';
import 'package:movie_application/provider/auth_provider.dart';
import 'package:movie_application/provider/all_home_provider.dart';
import 'package:movie_application/provider/detail_provider.dart';
import 'package:movie_application/provider/genre_category_provider.dart';
import 'package:movie_application/provider/genre_provider.dart';
import 'package:movie_application/provider/limited_home_provider.dart';
import 'package:movie_application/provider/search_provider.dart';
import 'package:movie_application/provider/series_episode_provider.dart';
import 'package:movie_application/provider/series_season_provider.dart';
import 'package:movie_application/provider/slider_provider.dart';
import 'package:movie_application/provider/star_provider.dart';

const String FAVORITE_MOVIE = 'favorites';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ));

  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteModelAdapter());
  await Hive.openBox<FavoriteModel>(FAVORITE_MOVIE);

  await UserDataPreferences.init();

  await FlutterDownloader.initialize(debug: true);

  runApp(MovieApplication());
}

class MovieApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderProvider()),
        ChangeNotifierProvider(create: (context) => LimitedHomeInformationProvider()),
        ChangeNotifierProvider(create: (context) => DetailProvider()),
        ChangeNotifierProvider(create: (context) => AllHomeMovieProvider()),
        ChangeNotifierProvider(create: (context) => SearchProvider()),
        ChangeNotifierProvider(create: (context) => GenreProvider()),
        ChangeNotifierProvider(create: (context) => GenreCategoryProvider()),
        ChangeNotifierProvider(create: (context) => StarProvider()),
        ChangeNotifierProvider(create: (context) => SeriesSeasonProvider()),
        ChangeNotifierProvider(create: (context) => SeriesEpisodeProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => BuyAccountProvider()),
        ChangeNotifierProvider(create: (context) => CommentsProvider()),
        ChangeNotifierProvider(create: (context) => SendCommentProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie Application',
        home: SplashScreen(),
      ),
    );
  }
}