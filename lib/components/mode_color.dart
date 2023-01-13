import 'package:flutter/material.dart';

class colorMode {
  late bool themevalue = true;
  void checktheme() {
    themevalue = !themevalue;

    print(themevalue);
  }
}
