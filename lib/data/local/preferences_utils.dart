import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUtils {
  final String userToken = "user_token";
  final String isFirstTime = "is_first_time";
  final String isGuest = "is_guest";

  Future<void> setUserToken(String userToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.userToken, userToken);
  }

  Future<String> getUserToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString(userToken) ?? "";
    return token;
  }

  Future<void> setIsFirstTime(bool isFirstTime) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(this.isFirstTime, isFirstTime);
  }

  Future<bool> getIsFirstTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool(this.isFirstTime) ?? true;
    return isFirstTime;
  }

  Future<void> setIsGuest(bool isGuest) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(this.isGuest, isGuest);
  }

  Future<bool> getIsGuest() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isGuest = prefs.getBool(this.isGuest) ?? false;
    return isGuest;
  }
}
