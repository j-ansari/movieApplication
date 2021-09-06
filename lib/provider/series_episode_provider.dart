import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/series_episode_model.dart';
import 'package:http/http.dart' as http;

class SeriesEpisodeProvider extends ChangeNotifier {
  final String _seriesEpisodeUrl = 'http://192.168.0.100/movieApplication/getEpisode.php?season_id=';
  late String seriesEpisodeKey;
  List<SeriesEpisodeModel> _episodeModel = [];

  List<SeriesEpisodeModel> get episodeModel => _episodeModel;

  Future fetchSeriesEpisodeData() async {
    var response = await http.get(
      Uri.parse(_seriesEpisodeUrl + seriesEpisodeKey),);
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<SeriesEpisodeModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = SeriesEpisodeModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _episodeModel = loadedList;
    notifyListeners();
  }
}