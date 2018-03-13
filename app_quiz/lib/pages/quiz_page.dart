import 'package:flutter/material.dart';
import '../Utils/question.dart';
import '../Utils/quiz.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget{
  @override
  State createState() => new QuizPageState();
}
class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context){
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(//This is our main page
          children: <Widget>[
            new AnswerButton(true,() => print("you answered true")),
            new QuestionText("Pizza is nice",1),
            new AnswerButton(false,() => print("your answered false"))
          ],
        ),
        new CorrectWrongOverlay(false)
      ],
    );
  }
}