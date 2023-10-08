import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/presentation/homepage/pages/learn/widget/quizes_container.dart';
import 'package:eclipse_app/presentation/quiz/quiz_page.dart';
import 'package:eclipse_app/resources/quizes_question.dart';
import 'package:eclipse_app/resources/resources.dart';
import 'package:eclipse_app/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  static final List<QuizLookModel> quizllook = [
    QuizLookModel(
        image: "assets/images/cartoon_astronut.png",
        title: "Eclipse Explorer",
        question: 13,
        color: const Color(0xFF024969)),
    QuizLookModel(
        image: "assets/images/cartoon_moon.png",
        title: "Starry Night",
        question: 32,
        color: const Color(0xFF592BAC)),
    QuizLookModel(
        image: "assets/images/cartoon_sun.png",
        title: "Lunar and Solar",
        question: 21,
        color: const Color(0xFF665429)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customNavbar(),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              height: 180,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Quiz",
                        style: context.titleLarge!.copyWith(
                            color: const Color(0xFF171717), fontSize: 22),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "13 questions",
                        style: context.bodyMedium!
                            .copyWith(color: const Color(0xFF171717)),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Quizpage(quiz: getDailyQuiz())));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration:
                              const BoxDecoration(color: ColorManager.neutral),
                          child: Text(
                            "Take Quiz",
                            style: context.titleSmall,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      width: 180,
                      height: 180,
                      color: Colors.black,
                      child: Image.asset(
                        "assets/images/moon.gif",
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              "Quizzes",
              style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Container(
              height: 220,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return QuizesContainer(
                      quizLookModel: quizllook[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  },
                  itemCount: quizllook.length),
            ),
          ],
        ));
  }
}

class QuizLookModel {
  String image;
  String title;
  int question;
  Color color;

  QuizLookModel(
      {required this.image,
      required this.title,
      required this.question,
      required this.color});
}
