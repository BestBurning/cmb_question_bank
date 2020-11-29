import 'package:cmb_question_bank/common/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'api/providers.dart';
import 'view/home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => QuestionListProvider()),
        ],
        child: CMBQuestionBank(),
      ),

  );
}

class CMBQuestionBank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '招行积分题库',
      theme: Style.DEFAULT_THEME,
      home: Home(),
    );
  }
}
