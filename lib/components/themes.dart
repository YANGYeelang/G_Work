import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.lightBlue,
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(255, 250, 250, 250),
          ),
        ),
      ),
      canvasColor: const Color.fromARGB(255, 110, 100, 237),
      shadowColor: Color.fromARGB(255, 89, 109, 81),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 234, 209, 97)),
      errorColor: const Color.fromARGB(255, 40, 92, 42),
      focusColor: Color.fromARGB(255, 153, 195, 204),
      disabledColor: const Color.fromARGB(255, 190, 228, 229),
      dividerColor: const Color.fromARGB(255, 224, 242, 254),
      indicatorColor: Colors.black,
      highlightColor: const Color.fromARGB(255, 211, 236, 225),
      accentColor: Color.fromARGB(255, 94, 94, 95),
      buttonColor: Colors.white,
      cardColor: Colors.white,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Color.fromARGB(255, 176, 218, 216),
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: Colors.amber),
      canvasColor: const Color.fromARGB(255, 142, 230, 231),
      shadowColor: const Color.fromARGB(255, 54, 244, 158),
      iconTheme: const IconThemeData(color: Colors.lightBlue),
      errorColor: const Color.fromARGB(255, 112, 255, 117),
      focusColor: const Color.fromARGB(255, 38, 54, 52),
      // disabledColor: Color.fromARGB(255, 128, 143, 136),
      dividerColor: const Color.fromARGB(255, 128, 143, 136),
      indicatorColor: Colors.white,
      highlightColor: const Color.fromARGB(255, 128, 143, 136),
      buttonColor: const Color.fromARGB(255, 99, 103, 103),
      primarySwatch: primaryBlack,
      accentColor: Colors.white,
      cardColor: const Color.fromARGB(255, 99, 103, 103),
      backgroundColor: Colors.grey,
      scaffoldBackgroundColor: const Color.fromARGB(255, 37, 41, 37),
      textTheme: const TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }
}
