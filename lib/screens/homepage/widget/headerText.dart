import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Good Moraning Akila",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Find Your \nCreative Job",
          style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w900,
              height: 1.2),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
