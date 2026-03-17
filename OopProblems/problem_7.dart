import 'dart:io';

class Question {
  String prompt;
  String answer;

  Question(this.prompt, this.answer);
}

class Quiz {
  List<Question> questions;
  int score = 0;
  int currentQuestion = 0;

  Quiz(this.questions);

  void displayQuestion() {
    Question q = questions[currentQuestion];
    stdout.write("${q.prompt}\nYour answer: ");
    String? userAnswer = stdin.readLineSync();
    checkAnswer(userAnswer ?? '', q.answer);
    currentQuestion++;
  }

  void checkAnswer(String userAnswer, String correctAnswer) {
    if (userAnswer.trim().toLowerCase() == correctAnswer.toLowerCase()) {
      print("Correct!\n");
      score++;
    } else {
      print("Wrong! The correct answer was: $correctAnswer\n");
    }
  }

  void showScore() {
    print("You scored $score out of ${questions.length}.");
  }
}

void main() {
  List<Question> questionList = [
    Question("What is the capital of France?", "Paris"),
    Question("What is 5 + 7?", "12"),
    Question("Which language is this program written in?", "Dart"),
  ];

  Quiz quiz = Quiz(questionList);

  while (quiz.currentQuestion < quiz.questions.length) {
    quiz.displayQuestion();
  }

  quiz.showScore();
}
