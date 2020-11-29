import 'package:flutter/material.dart';

import 'package:cmb_question_bank/model/question.dart';

class QuestionItem extends StatelessWidget {
  Question question;

  QuestionItem({
    Key key,
    this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '问: ' + question.question,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  '答: ' + question.answer,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            )),
        Divider(
          height: 5,
        ),
      ],
    );
  }
}
