class QuizState {
  int? selectedIndex;
  double progess;

  QuizState({this.selectedIndex, this.progess = 0});

  void setSelectedIndexNull() {
    selectedIndex = null;
  }

  QuizState copyWith({int? selectedIndex, double? progess}) {
    return QuizState(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        progess: progess ?? this.progess);
  }
}
