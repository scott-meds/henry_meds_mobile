import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class CustomInfoBox extends StatelessWidget {
  const CustomInfoBox({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: kInfoBlueBackground,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.info_outline_rounded,
            color: kInfoIconBlue,
          ),
          const SizedBox(
            width: 13,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: kInfoTextBlue),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 14,
                    color: kInfoSubTextBlue,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
