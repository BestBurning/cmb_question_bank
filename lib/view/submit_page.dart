import 'package:flutter/material.dart';

class SubmitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("没有找到题目???答案有误???欢迎提交改进"),
        Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        )

      ],
    );
  }
}
