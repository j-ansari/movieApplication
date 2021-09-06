import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/series_season_model.dart';
import 'package:http/http.dart' as http;

class SeriesSeasonProvider extends ChangeNotifier {
  final String _seriesSeasonUrl = 'http://192.168.0.100/movieApplication/getSeason.php?item_id=';
  late String seriesItemIdKey;
  List<SeriesSeasonModel> _seriesSeasonModel = [];

  List<SeriesSeasonModel> get seriesSeasonModel => _seriesSeasonModel;

  Future fetchSeriesSeasonData() async {
    var response = await http.get(
      Uri.parse(_seriesSeasonUrl + seriesItemIdKey),);
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<SeriesSeasonModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = SeriesSeasonModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _seriesSeasonModel = loadedList;
    notifyListeners();
  }
}