import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../resources/resources.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.07,
      margin: EdgeInsets.only(bottom: context.height * 0.02, left: context.width * 0.04, right: context.width * 0.04),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: ColorManager.white, boxShadow: [
        BoxShadow(
          color: ColorManager.black.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 15,
          offset: const Offset(0, 3),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite, size: 30),
          ),
        ],
      ),
    );
  }
}
