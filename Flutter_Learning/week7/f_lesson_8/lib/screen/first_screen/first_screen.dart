import 'package:flutter/material.dart';

import 'first_screen_utils.dart';

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      children: List.generate(
        20,
        (index) => containerBox(context, index),
      ),
    );
  }
}
