import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:http/http.dart' as http;

class SearchProvider extends ChangeNotifier {
  final String _searchUrl = 'http://192.168.0.100/movieApplication/getSearch.php?movie_name=';
  late String searchQuery;
  List<HomeMovieInformationModel> _searchModel = [];

  List<HomeMovieInformationModel> get searchModel => _searchModel;

  Future fetchSearchData() async {
    var response = await http.get(Uri.parse(_searchUrl + searchQuery));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _searchModel = loadedList;
    notifyListeners();
  }
}