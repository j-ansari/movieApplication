import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class SendCommentProvider extends ChangeNotifier {
  final String _sendCommentUrl = 'http://192.168.0.100/movieApplication/comments.php';
  String message = '';

  Future sendComment({
    required String itemId,
    required String comment,
    required String email,
  }) async {
    var body = Map<String, dynamic>();
    body['item_id'] = itemId;
    body['comment'] = comment;
    body['user_email'] = email;
    var sendData = await http.post(Uri.parse(_sendCommentUrl), body: body);
    message = sendData.body;
    print(sendData.body);
  }
}