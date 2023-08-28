import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static void setAccessToken(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String?> getAccessToken(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }


}

class SharedPrefsKeys {
  static const String accessToken = "accessToken";
  static const String isLoggedIn = "isLoggedIn";
}
