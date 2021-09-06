import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/star_model.dart';
import 'package:http/http.dart' as http;

class StarProvider extends ChangeNotifier {
  final String _movieStarUrl = 'http://192.168.0.100/movieApplication/getMovieStar.php?item_id=';
  late String itemIdKey;
  List<StarModel> _starModel = [];

  List<StarModel> get starModel => _starModel;

  Future fetchMovieStarData() async {
    var response = await http.get(Uri.parse(_movieStarUrl + itemIdKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<StarModel> loadedData = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = StarModel.fromJson(responseData[i]);
      loadedData.add(result);
    }
    _starModel = loadedData;
    notifyListeners();
  }

}