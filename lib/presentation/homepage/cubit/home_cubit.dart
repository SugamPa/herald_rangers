import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int _selectedIndex = 0;

  void changeIndex(int index) {
    _selectedIndex = index;
  }

  int get index => _selectedIndex;
}
