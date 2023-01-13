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
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 234, 209, 97)),
      errorColor: const Color.fromARGB(255, 40, 92, 42),
      focusColor: const Color.fromARGB(255, 116, 182, 194),
      disabledColor: const Color.fromARGB(255, 190, 228, 229),
      dividerColor: const Color.fromARGB(255, 210, 230, 235),
      indicatorColor: Colors.black,
      highlightColor: const Color.fromARGB(255, 211, 236, 225),
      accentColor: Colors.grey,
      buttonColor: Colors.white,
      cardColor: Colors.white,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: const Color.fromARGB(255, 142, 230, 231),
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
          BottomNavigationBarThemeData(backgroundColor: Colors.amber),
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
