import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/resources/resources.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDefaults.bodyHeight(context.height),
      child: const Center(
        child: Text("Learn Page"),
      ),
    );
  }
}
