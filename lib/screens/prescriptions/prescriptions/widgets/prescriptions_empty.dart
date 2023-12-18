import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class PrescriptionsEmpty extends StatelessWidget {
  const PrescriptionsEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(21.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.medication,
            size: 55,
            color: kIconGrey,
          ),
          Text(
            'Your account does not currently have any prescriptions.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: kIconGrey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
