import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class CustomTextFieldOutlined extends StatelessWidget {
  const CustomTextFieldOutlined({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 0),
        ),
        prefixIcon: Icon(
          icon,
          color: kIconGrey,
        ),
      ),
    );
  }
}
