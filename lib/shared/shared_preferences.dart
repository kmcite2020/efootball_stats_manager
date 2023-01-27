import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences preferences;
Future<void> setupPrefs() async => preferences = await SharedPreferences.getInstance();
