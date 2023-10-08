import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/presentation/quiz/quiz_cubit/quiz_cubit.dart';
import 'package:eclipse_app/presentation/quiz/quiz_cubit/quiz_state.dart';
import 'package:eclipse_app/resources/quizes_question.dart';
import 'package:eclipse_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Quizpage extends StatelessWidget {
  Quizpage({super.key, required this.quiz});
  final List<QuizQuestion> quiz;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            BlocBuilder<QuizCubit, QuizState>(
              builder: (context, state) {
                return LinearPercentIndicator(
                  barRadius: const Radius.circular(12),
                  lineHeight: 5,
                  percent: state.progess,
                  progressColor: const Color(0xFFFCE49B),
                  backgroundColor: ColorManager.neutral,
                );
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 600,
                    child: PageView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      itemCount: quiz.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Quiz ${index + 1}"),
                            const SizedBox(height: 20),
                            Text(
                              quiz[index].question,
                            ),
                            // const Spacer(),
                            const SizedBox(height: 20),
                            BlocBuilder<QuizCubit, QuizState>(
                              builder: (context, state) {
                                return ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, answerIndex) {
                                    return InkWell(
                                      onTap: () {
                                        final cubit = context.read<QuizCubit>();
                                        cubit.changeSelectedIndex(answerIndex);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: ColorManager.neutral,
                                          border: state.selectedIndex ==
                                                  answerIndex
                                              ? Border.all(color: Colors.yellow)
                                              : null,
                                        ),
                                        child: Row(
                                          children: [
                                            const Spacer(),
                                            Text(quiz[index]
                                                .options[answerIndex]),
                                            const Spacer(),
                                            state.check &&
                                                    quiz[index].options[
                                                            answerIndex] ==
                                                        quiz[index].answer
                                                ? const Icon(
                                                    Icons.check,
                                                    color: Colors.green,
                                                  )
                                                : const SizedBox(),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(height: 10);
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<QuizCubit, QuizState>(
                    builder: (context, state) {
                      return InkWell(
                        onTap: state.selectedIndex == null
                            ? () {}
                            : () async {
                                if ((pageController.page ?? 0).round() ==
                                    quiz.length - 1) {
                                  Navigator.of(context).pop();
                                } else {
                                  final cubit = context.read<QuizCubit>();
                                  cubit.checkAnswer(
                                      quiz[state.currentQuestion].options,
                                      state.selectedIndex!,
                                      quiz[state.currentQuestion].answer);
                                  await Future.delayed(
                                      const Duration(seconds: 1), () {
                                    pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  });
                                  cubit.changeQuestion(
                                      currentIndex:
                                          (pageController.page ?? 0).round(),
                                      totalQustion: quiz.length);
                                }
                              },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          color: state.selectedIndex == null
                              ? Colors.grey[100]
                              : Colors.yellow,
                          child: Center(
                              child: Text(
                            "Check",
                            style: context.titleSmall!
                                .copyWith(color: Colors.black),
                          )),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
