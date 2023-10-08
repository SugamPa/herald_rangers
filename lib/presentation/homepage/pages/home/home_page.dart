import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/resources/resources.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppDefaults.bodyHeight(context.height),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TODAY", style: context.titleMedium?.copyWith(color: Colors.amberAccent)),
                      Text("Oct 6, Sat", style: context.titleLarge),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(ImageAssets.googleIcon),
                  )
                ],
              ),
              const SizedBox(height: 20),
              // Add a moon
            ],
          ),
        ));
  }
}
