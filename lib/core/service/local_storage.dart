import 'package:shared_preferences/shared_preferences.dart';
import 'package:zero_waste/core/utils/shared_prefs_keys.dart';

class SharedPrefs {
  static void setAccessToken(String accessToken) async {
    await SharedPreferences.getInstance().then((value) async =>
        await value.setString(SharedPrefsKeys.accessToken, accessToken));
  }

  static Future<String> getAccessToken() async {
    final accessToken = await SharedPreferences.getInstance()
        .then((value) => value.getString(SharedPrefsKeys.accessToken) ?? "");
    return accessToken;
  }

  static void setOnboardingStatus(bool status) async {
    await SharedPreferences.getInstance().then((value) async =>
        await value.setBool(SharedPrefsKeys.onBoarded, status));
  }

  static Future<bool> getOnboardingStatus() async {
    final status = await SharedPreferences.getInstance()
        .then((value) => value.getBool(SharedPrefsKeys.onBoarded) ?? false);
    return status;
  }
}
