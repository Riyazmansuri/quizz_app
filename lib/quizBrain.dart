import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _lastnumber = 0;
  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green', true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else if (_questionNumber == _questionBank.length - 1) {
      _lastnumber = 1;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length || _lastnumber == 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionNumber = 0;
    _lastnumber = 0;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
