import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDefaults.bodyHeight(context.height),
      child: const Center(
        child: Text("Blog Page"),
      ),
    );
  }
}
