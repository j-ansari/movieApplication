import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/home_movie_information.dart';
import 'package:http/http.dart' as http;

class LimitedHomeInformationProvider extends ChangeNotifier {
  final String _limitedHomeUrl = 'http://192.168.0.100/movieApplication/getLimitedMovieInformation.php?category_name=';
  late String categoryKey;
  List<HomeMovieInformationModel> _topIMDbModel = [];
  List<HomeMovieInformationModel> _newMovieModel = [];
  List<HomeMovieInformationModel> _seriesModel = [];
  List<HomeMovieInformationModel> _iranianMovieModel = [];
  List<HomeMovieInformationModel> _iranianSeriesModel = [];
  List<HomeMovieInformationModel> _animationModel = [];

  List<HomeMovieInformationModel> get topIMDbModel => _topIMDbModel;

  List<HomeMovieInformationModel> get newMovieModel => _newMovieModel;

  List<HomeMovieInformationModel> get seriesModel => _seriesModel;

  List<HomeMovieInformationModel> get iranianMovieModel => _iranianMovieModel;

  List<HomeMovieInformationModel> get iranianSeriesModel => _iranianSeriesModel;

  List<HomeMovieInformationModel> get animationModel => _animationModel;

  Future fetchLimitedTopIMDbData() async {
    var response = await http.get(Uri.parse(_limitedHomeUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _topIMDbModel = loadedList;
    notifyListeners();
  }

  Future fetchLimitedNewMovieData() async {
    var response = await http.get(Uri.parse(_limitedHomeUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _newMovieModel = loadedList;
    notifyListeners();
  }

  Future fetchLimitedSeriesData() async {
    var response = await http.get(Uri.parse(_limitedHomeUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _seriesModel = loadedList;
    notifyListeners();
  }

  Future fetchLimitedIranianMovieData() async {
    var response = await http.get(Uri.parse(_limitedHomeUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _iranianMovieModel = loadedList;
    notifyListeners();
  }

  Future fetchLimitedIranianSeriesData() async {
    var response = await http.get(Uri.parse(_limitedHomeUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _iranianSeriesModel = loadedList;
    notifyListeners();
  }

  Future fetchLimitedAnimationData() async {
    var response = await http.get(Uri.parse(_limitedHomeUrl + categoryKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<HomeMovieInformationModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = HomeMovieInformationModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _animationModel = loadedList;
    notifyListeners();
  }
}