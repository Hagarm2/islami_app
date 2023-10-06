import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languagecode = 'en';

  void changelanguage(String langcode) {
    languagecode = langcode;
    notifyListeners();
  }
}
