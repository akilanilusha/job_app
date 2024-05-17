import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Show All",
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
