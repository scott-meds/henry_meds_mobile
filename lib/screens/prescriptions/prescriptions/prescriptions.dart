import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/screens/prescriptions/prescriptions/widgets/prescriptions_info.dart';
import 'package:henry_meds_mobile/widgets/custom_info_box.dart';

class Prescriptions extends StatelessWidget {
  const Prescriptions({super.key});

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView(
        children: [
          Container(
            color: kGreenBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 21),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Prescriptions',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                CustomInfoBox(
                  title: 'Pending prescriptions',
                  text: 'Pending submission to the pharmacy for processing',
                ),
                SizedBox(
                  height: 8,
                ),
                PrescriptionsInfo(),
              ],
            ),
            //TODO: add logic for empty state
            // child: const PrescriptionsEmpty(),
          ),
        ],
      ),
    );
  }
}
