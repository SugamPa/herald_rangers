final dailyQuiz = [
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
  {
    "question": "What is the name of the first satellite sent into space?",
    "options": ["Sputnik 1", "Sputnik 2", "Sputnik 3", "Sputnik 4"],
    "answer": "Sputnik 1",
  },
];

class QuizQuestion {
  String question;
  List<String> options;
  String answer;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.answer,
  });
  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
        question: json["question"],
        options: json["options"],
        answer: json["answer"]);
  }
}

List<QuizQuestion> getDailyQuiz() {
  List<QuizQuestion> dailyquiz =
      dailyQuiz.map((e) => QuizQuestion.fromJson(e)).toList();
  return dailyquiz;
}
