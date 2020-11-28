import 'package:cmb_question_bank/api/providers.dart';
import 'package:cmb_question_bank/api/question_api.dart';
import 'package:cmb_question_bank/model/question.dart';
import 'package:cmb_question_bank/widgets/question_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Question q1 = new Question(
        question: "哪项原则是征信机构最基本的职业道德，也是征信立法的主要内容之一", answer: "隐私商业秘密保护原则");
    Question q2 =
        new Question(question: "2006年左右，居民理财渠道较为单一，都在（）上", answer: "存款、国债");
    return Container(
      child: Column(
        children: [
          SizedBox(
              height: 50,
              child: new Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "请输入关键字",
                        hintStyle: TextStyle(
                          height: 0.5,
                          fontSize: 12.0,
                        ),
                        filled: true,
                        fillColor: Theme.of(context).backgroundColor,
                        focusColor: Theme.of(context).accentColor,
                        hoverColor: Theme.of(context).accentColor,
                        // Theme.of(context).backgroundColor,
                        prefixIcon: Icon(
                          Icons.search,
                          // color: Theme.of(context).accentIconTheme.color,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                              width: 0, color: Theme.of(context).accentColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Theme.of(context).backgroundColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                      onChanged: (keywords) {
                        print(keywords);
                        context.read<QuestionListProvider>().search(keywords);
                      },
                    ),
                  ))),
          Divider(
            height: 0,
            thickness: 1,
          ),
          Expanded(
              flex: 10,
              child: ListView.builder(
                  itemCount:
                      context.watch<QuestionListProvider>().questions.length,
                  itemBuilder: (context, index) {
                    return QuestionItem(
                      question: context
                          .watch<QuestionListProvider>()
                          .questions[index],
                    );
                  }))
        ],
      ),
      decoration: BoxDecoration(
          // 下滑线浅灰色，宽度1像素
          border:
              Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))),
    );
  }
}
