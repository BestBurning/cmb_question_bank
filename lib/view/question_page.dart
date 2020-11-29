import 'package:cmb_question_bank/api/providers.dart';
import 'package:cmb_question_bank/widgets/question_item.dart';
import 'package:cmb_question_bank/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Search(context),
          Divider(
            height: 0,
            thickness: 1,
          ),
          Expanded(
              flex: 10,
              child: Consumer<QuestionListProvider>(
                  builder: (_, questionListProvider, child) {
                return ListView.builder(
                    itemCount: questionListProvider.questions.length,
                    itemBuilder: (context, index) {
                      return QuestionItem(
                        question: questionListProvider.questions[index],
                      );
                    });
              }))
        ],
      ),
    );
  }
}
