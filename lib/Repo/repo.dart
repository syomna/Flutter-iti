import 'package:task/Models/Questions.dart';

class Repo {
  int index = 0;
  int score = 0;
  bool isLast = false;
  List<Questions> questionsList = [
    Questions(question: 'Do you call all dogs “puppies?”', answer: false),
    Questions(
        question: 'Are cows and cats animals that live in the jungle?',
        answer: false),
    Questions(question: 'Are combs used to brush your teeth?', answer: false),
    Questions(question: 'Are airplanes faster than bicycles?', answer: true),
    Questions(question: 'Are strawberries sweet?', answer: true),
  ];

  Questions getCurrentQuestion() {
    return questionsList[index];
  }

  getNextQuestion() {
    if (index < questionsList.length - 1) {
      index++;
      if (isLast) {
        score = 0;
        isLast = false;
      }
    } else {
      index = 0;
      isLast = true;
    }
  }

  calculateScore(bool answer) {
    if (getCurrentQuestion().answer == answer) {
      score++;
    }
    getNextQuestion();
  }
}
