import 'package:shared_preferences/shared_preferences.dart';

class UserDataPreferences {

  static SharedPreferences? _preferences;

  static const _userNameKey = 'userName';
  static const _emailKey = 'email';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setUserName(String userName) async {
    await _preferences!.setString(_userNameKey, userName);
  }

  static String? getUserName() => _preferences!.getString(_userNameKey);

  static Future setEmail(String email) async {
    await _preferences!.setString(_emailKey, email);
  }

  static String? getEmail() => _preferences!.getString(_emailKey);

}