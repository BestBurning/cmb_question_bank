import 'package:flutter/material.dart';

class Style {
  static const TextStyle TEXT_STYLE = TextStyle(fontSize: 12,fontFamily: "ZCOOLXiaoWei");

  static final ThemeData DEFAULT_THEME = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    accentColor: Colors.teal[300],
    backgroundColor: Colors.black26,
    primaryIconTheme: IconThemeData(color: Colors.black12),
    accentIconTheme: IconThemeData(color: Colors.teal[300]),
    // textTheme: ,
  );
}
