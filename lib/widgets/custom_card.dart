import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: kBorderGrey),
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
