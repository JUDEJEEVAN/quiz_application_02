class Question {
  final String question;
  final List<String> options;

  const Question({required this.question, required this.options});

  List<String> get answers {
    List<String> randomAnswers = List.from(options);
    randomAnswers.shuffle();
    return randomAnswers;
  }

  String get correctAnswer => options.first;
}
