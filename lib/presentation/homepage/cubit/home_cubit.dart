import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial(selectedIndex: 0));

  void changeIndex(int index) {
    emit(HomeInitial(selectedIndex: index));
  }

  int get index => (state as HomeInitial).selectedIndex;
  bool isSelected(int selectedIndex) => selectedIndex == index;
}
