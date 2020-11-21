import 'package:flutter/material.dart';

import 'view/home.dart';

void main() {
  runApp(CMBQuestionBank());
}

class CMBQuestionBank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '招行积分题库',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
