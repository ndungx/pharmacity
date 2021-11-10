import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future setFirstTime(bool value) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool('isFirstTime', value);
  }

  Future<bool> getFirstTime() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isFirstTime') ?? true;
  }
}
