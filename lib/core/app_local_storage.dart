import 'package:shared_preferences/shared_preferences.dart';

class AppLocal {
  static String imageKey = 'image_path';
  static String nameKey = 'name_key';
  static String isupload = 'upload';
 static cashData(String key,String data) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(key, data);
  }

 static Future<String> getCashed(String key) async {
    var prefs = await SharedPreferences.getInstance();
return prefs.getString(key) ?? '' ;
  }
 static cashBool(String key,bool data) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, data);
  }
  static Future<bool> getBool(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false ;
  }
}
