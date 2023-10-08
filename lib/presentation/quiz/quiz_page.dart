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
                            const Text(
                                "During a total solar eclipse, what part of the Sun becomes visible around the edges of the Moon?"),
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
                                        context
                                            .read<QuizCubit>()
                                            .changeSelectedIndex(answerIndex);
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
                                        child: const Center(
                                          child: Text("Solor Eclipse"),
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
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      color: Colors.blue,
                      child: const Center(child: Text("Check")),
                    ),
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
