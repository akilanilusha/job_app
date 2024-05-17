import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(Icons.menu),
        ),
        const Text(
          "Creative Job",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: NetworkImage(
                  "https://media.licdn.com/dms/image/D5603AQHk4-9Ki_8_UA/profile-displayphoto-shrink_800_800/0/1698769013188?e=2147483647&v=beta&t=HhKVpolonH50UJT160I7_HsoXJH2kV33sIshHPN_skw"),
            ),
          ),
        )
      ],
    );
  }
}
