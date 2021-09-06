import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:movie_application/model/comments_model.dart';
import 'package:http/http.dart' as http;

class CommentsProvider extends ChangeNotifier {
  final String _commentsUrl = 'http://192.168.0.100/movieApplication/getComments.php?item_id=';
  late String itemIdKey;
  final String confirm = '&&confirmation=1';
  List<CommentsModel> _commentsModel = [];

  List<CommentsModel> get commentsModel => _commentsModel;

  Future fetchCommentsData() async {
    var response =
    await http.get(Uri.parse(_commentsUrl + itemIdKey + confirm));
    List responseData = json.decode(utf8.decode(response.bodyBytes));
    List<CommentsModel> loadedList = [];
    for (int i = 0; i < responseData.length; i++) {
      var result = CommentsModel.fromJson(responseData[i]);
      loadedList.add(result);
    }
    _commentsModel = loadedList;
    notifyListeners();
  }
}