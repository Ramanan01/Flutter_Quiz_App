import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  Quiz(this.answerQuestion, this.questionIndex, this.questions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['QuestionText']),
        ...(questions[questionIndex]['Answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(score: answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
