import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/slider_model.dart';
import 'package:http/http.dart' as http;

class SliderProvider extends ChangeNotifier {
  final String _sliderUrl = 'http://192.168.0.100/movieApplication/getSlider.php';
  List<SliderModel> _sliderModel = [];

  List<SliderModel> get sliderModel => _sliderModel;

  Future fetchSliderData() async {
    var response = await http.get(Uri.parse(_sliderUrl));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<SliderModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = SliderModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _sliderModel = loadedList;
    notifyListeners();
  }
}