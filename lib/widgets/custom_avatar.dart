import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const Padding(
          padding: EdgeInsets.all(1.0),
          child: CircleAvatar(
            foregroundImage: AssetImage('assets/images/user_image.png'),
          )),
    );
  }
}
