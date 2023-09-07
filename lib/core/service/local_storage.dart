import 'package:shared_preferences/shared_preferences.dart';
import 'package:zero_waste/core/utils/shared_prefs_keys.dart';

class SharedPrefs {
  static void setAccessToken(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String?> getAccessToken(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static void setOnboardingStatus(bool status) async {
    await SharedPreferences.getInstance().then((value) async =>
        await value.setBool(SharedPrefsKeys.onBoarded, status));
  }

  static Future<bool> getOnboardingStatus(String key) async {
    final status = await SharedPreferences.getInstance()
        .then((value) => value.getBool(key) ?? false);
    return status;
  }
}

