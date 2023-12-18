import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class PrescriptionsDosingInfoHeader extends StatelessWidget {
  const PrescriptionsDosingInfoHeader(
      {super.key, required this.title, this.isOpen = false});

  final String title;
  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 21.0, bottom: 8, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                const TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          isOpen
              ? const Icon(
                  Icons.expand_less,
                  color: kMainColor,
                )
              : const Icon(
                  Icons.expand_more,
                  color: kMainColor,
                ),
        ],
      ),
    ));
  }
}
