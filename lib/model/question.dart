import 'dart:convert';

class Question {
  int id;
  String question;
  String answer;
  Question({
    this.id,
    this.question,
    this.answer,
  });

  Question copyWith({
    int id,
    String question,
    String answer,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'answer': answer,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Question(
      id: map['id'],
      question: map['question'],
      answer: map['answer'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source));

  @override
  String toString() => 'Question(id: $id, question: $question, answer: $answer)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Question &&
      o.id == id &&
      o.question == question &&
      o.answer == answer;
  }

  @override
  int get hashCode => id.hashCode ^ question.hashCode ^ answer.hashCode;
}
