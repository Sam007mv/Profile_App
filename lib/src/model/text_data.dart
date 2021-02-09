import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextData extends ChangeNotifier {
  String name = '';
  String phoneNumber = '';
  String email = '';

  saveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('number', phoneNumber);
    prefs.setString('mail', email);
  }

  readName() async {
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name') ?? '';
  }

  readNumber() async {
    final prefs = await SharedPreferences.getInstance();
    phoneNumber = prefs.getString('number') ?? '';
  }

  readmail() async {
    final prefs = await SharedPreferences.getInstance();
    email = prefs.getString('mail') ?? '';
  }

  // readData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.getString('name');
  //   prefs.getString('number');
  //   prefs.getString('mail');
  // }

  // saveData() async {
  //   final prefs = await SharedPreferences.getInstance();

  //   prefs.setString('name', name);
  //   prefs.setString('number', phoneNumber);
  //   prefs.setString('mail', email);
  // String getCurrentData() {
  //   prefs.getString(name);
  //   prefs.getString(phoneNumber);
  //   prefs.getString(email);
  // }

  // String value = getCurrentData();
  // prefs.setString('data', value);
  // }
}
