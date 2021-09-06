import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/buy_account_model.dart';
import 'package:http/http.dart' as http;

class BuyAccountProvider extends ChangeNotifier {
  final String _buyAccountUrl = 'http://192.168.0.100/movieApplication/getBuyAccount.php';
  List<BuyAccountModel> _buyAccountModel = [];

  List<BuyAccountModel> get buyAccountModel => _buyAccountModel;

  Future fetchBuyAccountData() async {
    var response = await http.get(Uri.parse(_buyAccountUrl));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<BuyAccountModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = BuyAccountModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _buyAccountModel = loadedList;
    notifyListeners();
  }
}