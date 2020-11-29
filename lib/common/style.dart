import 'package:flutter/material.dart';

class Style {
  static final ThemeData DEFAULT_THEME = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    accentColor: Colors.teal[300],
    backgroundColor: Colors.black26,
    primaryIconTheme: IconThemeData(color: Colors.black12),
    accentIconTheme: IconThemeData(color: Colors.teal[300]),
    textTheme: TextTheme(
        // subtitle2: TextStyle(fontFamily: "Seto"),
        // bodyText2: TextStyle(fontSize: 12, fontFamily: "Seto")
        ),
    // textTheme: ,
  );
}
