import 'package:eclipse_app/presentation/homepage/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../resources/resources.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final HomeCubit homeCubit;
  const CustomBottomNavigationBar({
    super.key,
    required this.homeCubit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.1,
      padding: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(color: ColorManager.pureBlack, boxShadow: [
        BoxShadow(
          color: ColorManager.white.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 1,
          offset: const Offset(2, 3),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarButton(
            icon: Icons.home_filled,
            label: "Home",
            onTap: () => homeCubit.changeIndex(0),
            isSelected: homeCubit.isSelected(0),
          ),
          NavBarButton(
            label: "Explore",
            icon: Icons.explore_outlined,
            onTap: () => homeCubit.changeIndex(1),
            isSelected: homeCubit.isSelected(1),
          ),
          NavBarButton(
            icon: Icons.menu_book_outlined,
            label: "Learn",
            onTap: () => homeCubit.changeIndex(2),
            isSelected: homeCubit.isSelected(2),
          ),
          NavBarButton(
            label: "Blog",
            icon: Icons.edit_square,
            onTap: () => homeCubit.changeIndex(3),
            isSelected: homeCubit.isSelected(3),
          ),
        ],
      ),
    );
  }
}

class NavBarButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function() onTap;
  final bool isSelected;
  const NavBarButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon, size: 25, color: isSelected ? ColorManager.white : ColorManager.lightTextGrey),
        Text(label, style: TextStyle(color: isSelected ? ColorManager.white : ColorManager.lightTextGrey)),
      ]),
    );
  }
}
