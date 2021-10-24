import 'package:shared_preferences/shared_preferences.dart';

class PreferencesSerice {
  Future setFirstTime(bool value) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool('isfirstTime', value);
  }

  Future<bool> getFirstTime() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isfirstTime') ?? true;
  }
}
