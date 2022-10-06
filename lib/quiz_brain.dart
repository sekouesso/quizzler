import 'package:syntax_flutter/questions.dart';

class Quizbrain{
  static int _questionNumber = 0;
  //final int _questionPosition = 0;
  final List<Question> _questionBank = [
    Question(questionText: "Sylvanus Olympio est-il le premier président du Togo? ", questionAnswer: true),
    Question(questionText: "CR7 est le joueur qui a plus de ballon d'or? ", questionAnswer: false),
    Question(questionText: "Le Togo a eu sont indépendance le 27 Avrile 1960? ", questionAnswer: true),
    Question(questionText: "Messi joue-t-il encore au Barça? ", questionAnswer: false),
    Question(questionText: "69 est-il premier? ", questionAnswer: false),
    Question(questionText: "Messi joue actuellement dans le club PSG? ", questionAnswer: true),
  ];
  //recuperer une question
  String getQuestion(){
    return _questionBank[_questionNumber].questionText;
  }
  //recuperer une reponse
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  //recuperer le nombre de questions
  int countQuestionBankElement(){
    return _questionBank.length;
  }

  void nextQuestion(){
    if(_questionNumber<_questionBank.length) {
      _questionNumber++;
    }
  }
   bool isFinished() {
    return _questionNumber == _questionBank.length;
  }

  
  void reset() {
    _questionNumber = 0;
  }
}