import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static late SharedPreferencesUtil _instance;

  static SharedPreferencesUtil getInstance() {
    if (_instance == null) {
      _instance = SharedPreferencesUtil();
    }
    return _instance;
  }

  Future setBool(String tag, bool isFirst) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setBool(tag, isFirst);
  }

  Future getBool(String tag) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(tag);
  }

  Future setString(String tag, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(tag, value);
  }

  Future getString(String tag) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tag);
  }

  Future<bool> clear() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.clear();
  }
}
