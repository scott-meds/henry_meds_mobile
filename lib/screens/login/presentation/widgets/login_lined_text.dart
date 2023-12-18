import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class LoginLinedText extends StatelessWidget {
  const LoginLinedText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: kTextGrey,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
