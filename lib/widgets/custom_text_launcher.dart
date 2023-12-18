import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class CustomTextLauncher extends StatelessWidget {
  const CustomTextLauncher(
      {super.key,
      required this.text,
      required this.onTap,
      this.padding = EdgeInsets.zero});

  final String text;
  final VoidCallback onTap;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: SizedBox(
          width: double.infinity,
          child: Text(
            text,
            style: const TextStyle(
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
