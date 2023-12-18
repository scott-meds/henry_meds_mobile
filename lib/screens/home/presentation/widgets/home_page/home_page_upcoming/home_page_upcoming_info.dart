import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class HomePageUpcomingInfo extends StatelessWidget {
  const HomePageUpcomingInfo({
    super.key,
    required this.label,
    required this.text,
    required this.icon,
  });

  final String label;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: kMainColor,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: kMainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: kTitleGrey),
            ),
          ],
        )
      ],
    );
  }
}
