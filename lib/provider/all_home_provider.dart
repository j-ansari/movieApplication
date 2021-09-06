import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:http/http.dart' as http;

class AllHomeMovieProvider extends ChangeNotifier {
  String _allMovieUrl = 'http://192.168.0.100/movieApplication/getAllMovieInformation.php?category_name=';
  late String categoryKey;
  late String searchKey;
  List<HomeMovieInformationModel> _allHomeMovieModel = [];
  List<HomeMovieInformationModel> _relatedMovieModel = [];

  List<HomeMovieInformationModel> get allHomeMovieModel => _allHomeMovieModel;

  List<HomeMovieInformationModel> get relatedMovieModel => _relatedMovieModel;

  Future fetchAllMovieData() async {
    var response = await http.get(
      Uri.parse(_allMovieUrl + categoryKey + searchKey),);
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _allHomeMovieModel = loadedList;
    notifyListeners();
  }

  Future fetchRelatedMovieData() async {
    var response = await http.get(Uri.parse(_allMovieUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _relatedMovieModel = loadedList..shuffle();
    notifyListeners();
  }
}