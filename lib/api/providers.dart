import 'package:cmb_question_bank/api/question_api.dart';
import 'package:cmb_question_bank/model/question.dart';
import 'package:flutter/foundation.dart';

class QuestionListProvider with ChangeNotifier {
  List<Question> _questions = List();

  List<Question> get questions => _questions;

  Future<List<Question>> search(String keywords) async {
    _questions.clear();
    List<Question> questions =
        await QuestionAPI.getQuestionListByKeywords(keywords);
    _questions.addAll(questions);
    notifyListeners();
  }

  clear() {
    _questions.clear();
    notifyListeners();
  }
}
