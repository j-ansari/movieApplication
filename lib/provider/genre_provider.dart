import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/genre_model.dart';
import 'package:http/http.dart' as http;

class GenreProvider extends ChangeNotifier {
  final String _genreUrl = 'http://192.168.0.100/movieApplication/genreMovie.php';
  List<GenreModel> _genreModel = [];

  List<GenreModel> get genreModel => _genreModel;

  Future fetchGenreData() async {
    var response = await http.get(Uri.parse(_genreUrl));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<GenreModel> loadedData = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = GenreModel.fromJson(responseData[i]);
      loadedData.add(result);
    }
    _genreModel = loadedData;
    notifyListeners();
  }
}