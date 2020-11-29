import 'package:cmb_question_bank/common/api_url.dart';
import 'package:cmb_question_bank/common/http_manager.dart';
import 'package:cmb_question_bank/model/question.dart';

class QuestionAPI {
  static Future<List<Question>> getQuestionListByKeywords(
      String keywords) async {
    var data = await HttpManager.get(API_URL.QUESTION_SEARCH + keywords);
    List<Question> questions = toQuestionList(data as List);
    return questions;
  }

  static List<Question> toQuestionList(data) {
    List<Question> list = List();
    for (var question in data) {
      Question q = Question.fromMap(question);
      list.add(q);
    }
    return list;
  }
}
