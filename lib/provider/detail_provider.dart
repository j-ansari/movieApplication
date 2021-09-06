import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/detail_model.dart';
import 'package:http/http.dart' as http;

class DetailProvider extends ChangeNotifier {
  final String _detailUrl = 'http://192.168.0.100/movieApplication/getDetail.php?item_id=';
  late String detailUrlKey;
  List<DetailModel> _detailModel = [];

  List<DetailModel> get detailModel => _detailModel;

  Future fetchDetailModelData() async {
    var response = await http.get(Uri.parse(_detailUrl + detailUrlKey));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<DetailModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = DetailModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _detailModel = loadedList;
    notifyListeners();
  }
}