import 'package:flutter/material.dart';

import 'feedback_page.dart';
import 'question_page.dart';
import 'settings_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = [
    QuestionPage(),
    FeedbackPage(),
    SettingsPage(),
  ];

  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomNavigationBarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.brush), label: '答题'),
      BottomNavigationBarItem(icon: Icon(Icons.comment), label: '反馈'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(color: Colors.white10),
            child: _pages[_currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex,
        fixedColor: Theme.of(context).accentColor,
        onTap: (index) {
          _changePage(index);
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _changePage(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
