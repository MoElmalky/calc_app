import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  int pattern;
  String username;

  ColorProvider({
    this.pattern = 0,
    this.username = "Elmalky",
  });

  void changeColorPattern({required int colorPattern}) async {
    pattern = colorPattern;
    notifyListeners();
  }

  void changeUsername({required String username}) async {
    this.username = username;
    notifyListeners();
  }
}
