class QuizState {
  int? selectedIndex;
  double progess;
  int currentQuestion;
  bool check;

  QuizState({
    this.selectedIndex,
    this.progess = 0,
    this.currentQuestion = 0,
    this.check = false,
  });

  void setSelectedIndexNull() {
    selectedIndex = null;
  }

  QuizState copyWith(
      {int? selectedIndex,
      double? progess,
      int? currentQuestion,
      bool? check}) {
    return QuizState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      progess: progess ?? this.progess,
      currentQuestion: currentQuestion ?? this.currentQuestion,
      check: check ?? this.check,
    );
  }
}
