final dailyQuiz = [
  {
    "question": "What is a solar eclipse?",
    "options": ["Moon", "Sun", "Shadow", "Light"],
    "answer": "Moon"
  },
  {
    "question": "What is a lunar eclipse?",
    "options": ["Sun", "Earth", "Cloud", "Star"],
    "answer": "Earth"
  },
  {
    "question": "What causes a total solar eclipse?",
    "options": ["Moon", "Comet", "Asteroid", "Meteor"],
    "answer": "Moon"
  },
  {
    "question": "What causes a penumbral lunar eclipse?",
    "options": ["Penumbra", "Galaxy", "Nebula", "Pluto"],
    "answer": "Penumbra"
  },
  {
    "question": "In what phase of the Moon can a solar eclipse occur?",
    "options": ["New", "First", "Third", "Crescent"],
    "answer": "New"
  },
  {
    "question": "In what phase of the Moon can a lunar eclipse occur?",
    "options": ["Full", "Half", "Quarter", "Gibbous"],
    "answer": "Full"
  },
  {
    "question":
        "What is the term for the outermost part of the Sun's atmosphere visible during a total solar eclipse?",
    "options": ["Flare", "Corona", "Prominence", "Core"],
    "answer": "Corona"
  },
  {
    "question":
        "How often does a total solar eclipse occur at any given location on Earth?",
    "options": ["Varies", "Yearly", "Monthly", "Daily"],
    "answer": "Varies"
  },
  {
    "question": "What is a hybrid eclipse?",
    "options": ["Changes", "Rare", "Common", "Unique"],
    "answer": "Changes"
  },
  {
    "question":
        "What is the term for the darkest part of the Moon's shadow during a solar eclipse?",
    "options": ["Umbra", "Penumbra", "Antumbra", "Solarium"],
    "answer": "Umbra"
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
