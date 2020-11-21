import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'view/home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(CMBQuestionBank());
}

class CMBQuestionBank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '招行积分题库',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.black,
          accentColor: Colors.teal[300],
          backgroundColor: Colors.black26,
          primaryIconTheme: IconThemeData(color: Colors.black12),
          accentIconTheme: IconThemeData(color: Colors.teal[300]),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink)))),
      home: Home(),
    );
  }
}
