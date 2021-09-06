import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  final String _signUPUrl = 'http://192.168.0.100/movieApplication/register.php';
  final String _loginUrl = 'http://192.168.0.100/movieApplication/login.php';
  bool isSuccessSignUp = false;
  bool isSuccessLogin = false;
  String messageResult = '';

  Future signUpRequest({
    required String userName,
    required String emailAddress,
    required String phoneNumber,
    required String password,
  }) async {
    var body = Map<String, dynamic>();
    body['user_name'] = userName;
    body['email_address'] = emailAddress;
    body['phone_number'] = phoneNumber;
    body['password'] = password;
    var response = await http.post(Uri.parse(_signUPUrl), body: body);
    messageResult = response.body;
    print(response.body);
    print(response.statusCode);
    if(response.body == 'Register is Success!!'){
      isSuccessSignUp = true;
    }
    notifyListeners();
  }

  Future loginRequest({
    required String email,
    required String phoneNumber,
    required String password
  }) async {
    var body = Map<String, dynamic>();
    body['email_address'] = email;
    body['phone_number'] = phoneNumber;
    body['password'] = password;
    var response = await http.post(Uri.parse(_loginUrl), body: body);
    messageResult = response.body;

    if(response.body == 'Login is Success!!'){
      isSuccessLogin = true;
    }
    print(response.body);
    notifyListeners();
  }
}