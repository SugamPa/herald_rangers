import 'package:eclipse_app/presentation/quiz/quiz_cubit/quiz_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(QuizState());

  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void changeQuestion({
    required int correctAnswer,
    required int totalQustion,
  }) {
    double porgess = totalQustion / correctAnswer;
    emit(state.copyWith(progess: porgess));
    state..setSelectedIndexNull();
  }
}
