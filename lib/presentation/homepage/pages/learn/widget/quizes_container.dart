import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/presentation/homepage/pages/learn/learn_page.dart';
import 'package:flutter/material.dart';

class QuizesContainer extends StatelessWidget {
  const QuizesContainer({super.key, required this.quizLookModel});
  final QuizLookModel quizLookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 180,
      color: quizLookModel.color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            quizLookModel.image,
            height: 160,
            width: 160,
          ),
          const Spacer(),
          Text(
            quizLookModel.title,
            style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            "${quizLookModel.question} questions",
            style: context.bodyMedium!,
          ),
        ],
      ),
    );
  }
}
