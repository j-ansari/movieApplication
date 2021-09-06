import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:http/http.dart' as http;

class GenreCategoryProvider extends ChangeNotifier {
  final String _genreCategoryUrl = 'http://192.168.0.100/movieApplication/getGenre.php?genre_name=';
  late String genreCategoryKeyUrl;
  List<HomeMovieInformationModel> _genreCategoryModel = [];

  List<HomeMovieInformationModel> get genreCategoryModel => _genreCategoryModel;

  Future fetchGenreCategoryData() async {
    var response = await http.get(Uri.parse(_genreCategoryUrl + genreCategoryKeyUrl));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedData = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedData.add(result);
    }
    _genreCategoryModel = loadedData;
    notifyListeners();
  }
}