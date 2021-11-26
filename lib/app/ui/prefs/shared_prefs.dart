import 'package:shared_preferences/shared_preferences.dart';

Future<void> setLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('logged_in', true);
}

Future<bool?> getLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool("logged_in");
}

Future<void> removeLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("logged_in");
  prefs.remove("name");
  prefs.remove("email");
  prefs.remove("uid");
  prefs.remove("imageURL");
}

Future<void> setAccountObject({name, email, uid, imageURL}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  prefs.setString('email', email);
  prefs.setString('uid', uid);
  prefs.setString('imageURL', imageURL);
}

Future<String?> getName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("name");
}

Future<String?> getEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("email");
}

Future<String?> getUid() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("uid");
}

Future<String?> getImageURL() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("imageURL");
}

Future<int?> getSId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt("sId");
}

Future<void> setSId({int? sId}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('sId', sId!);
}
