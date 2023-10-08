import 'package:eclipse_app/presentation/quiz/quiz_cubit/quiz_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(QuizState());

  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void changeQuestionIndex(int index) {
    emit(state.copyWith(currentQuestion: index));
  }

  void changeQuestion({
    required int currentIndex,
    required int totalQustion,
  }) {
    double progress = (currentIndex + 1) / totalQustion;
    emit(state.copyWith(progess: progress));
    state.setSelectedIndexNull();
    emit(state.copyWith(check: false));
  }

  void checkAnswer(
      List<String> options, int selectedIndex, String correctAnswer) {
    emit(state.copyWith(check: true));
    if (options[selectedIndex] == correctAnswer) {}
  }

  void reset() {
    emit(state.copyWith(check: false));
  }
}
