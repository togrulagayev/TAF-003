import 'package:flutter/material.dart';

Container containerBox(BuildContext context, int index) {
  return Container(
    color: Colors.blueAccent,
    child: Center(
      child: Text(
        'Item ${index + 1}',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    ),
  );
}
