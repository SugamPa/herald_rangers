part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {
  final int selectedIndex;
  HomeInitial({required this.selectedIndex});
}
