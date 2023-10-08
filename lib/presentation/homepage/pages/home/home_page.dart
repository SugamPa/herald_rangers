import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.9,
      child: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
