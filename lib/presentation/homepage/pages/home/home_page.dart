import 'package:easy_localization/easy_localization.dart';
import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/resources/quizes_question.dart';
import 'package:eclipse_app/resources/resources.dart';
import 'package:eclipse_app/widgets/upcomming_eclipses_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("TODAY",
                        style: context.titleMedium
                            ?.copyWith(color: Colors.amberAccent)),
                    Text(DateFormat("MMM d, EEE").format(DateTime.now()),
                        style: context.titleLarge),
                  ],
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(ImageAssets.googleIcon),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 400,
              width: double.maxFinite,
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Upcoming Eclipses",
                style: context.titleLarge!.copyWith(fontSize: 16)),
            const SizedBox(height: 12),
            SizedBox(
              height: 120,
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return UpcomingEclipseContainer(
                    isUpcomming: index == 0,
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding:
                  const EdgeInsets.only(left: 12, right: 17, top: 8, bottom: 8),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF7D7D7D)),
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF2A2A2A),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/didyouknow.png",
                    height: 64,
                    width: 58,
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Did you know?",
                          style: context.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 12)),
                      const SizedBox(height: 2),
                      Text(
                          "Space is completely silent: In the vacuum of space,there is no air to carry sound waves. So, space is eerily silent, unlike the noisy world we're used to.",
                          style: context.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 12)),
                    ],
                  ))
                ],
              ),
            ),

            // Add a moon
          ],
        ),
      ),
    );
  }
}
