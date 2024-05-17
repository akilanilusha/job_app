import 'package:flutter/material.dart';

class JobSerchBar extends StatelessWidget {
  const JobSerchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.75,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search For Job",
              fillColor: Colors.white,
              filled: true,
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
        SizedBox(
          width: size.width * .05,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
