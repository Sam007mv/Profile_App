import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeViewModel extends ChangeNotifier {
  String name = '';
  String phoneNumber = '';
  String email = '';

  void UpdateAll(String currentName, String currentNumber, String currentMail) {
    name = currentName;
    phoneNumber = currentNumber;
    email = currentMail;
    saveData();
    notifyListeners();
  }

  saveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('savename', name);
    prefs.setString('savenumber', phoneNumber);
    prefs.setString('savemail', email);
  }

  getData() async {
    name = await readName();
    phoneNumber = await readNumber();
    email = await readmail();
    notifyListeners();
  }

  Future<String> readName() async {
    final prefs = await SharedPreferences.getInstance();
    String nm = prefs.getString('savename');
    if (nm == null)
      return '';
    else
      return nm;
  }

  Future<String> readNumber() async {
    final prefs = await SharedPreferences.getInstance();
    String ph = prefs.getString('savenumber');
    if (ph == null)
      return '';
    else
      return ph;
  }

  Future<String> readmail() async {
    final prefs = await SharedPreferences.getInstance();
    String em = prefs.getString('savemail');
    if (em == null)
      return '';
    else
      return em;
  }
}
