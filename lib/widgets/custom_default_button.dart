import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class CustomDefaultButton extends StatelessWidget {
  const CustomDefaultButton({
    super.key,
    required this.title,
    required this.onTap,
    this.margin = const EdgeInsets.symmetric(horizontal: 18),
    this.isLoading = false,
  });

  final String title;
  final VoidCallback onTap;
  final EdgeInsets margin;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // adjust opacity as needed
              offset: const Offset(
                  0, 3), // adjust x and y offsets for desired spread
              blurRadius: 1.0, // adjust blur radius for softness
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.14),
              offset: const Offset(0, 2),
              blurRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: const Offset(0, 1),
              blurRadius: 5.0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(12),
        margin: margin,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 23,
                  width: 23,
                  child: CircularProgressIndicator(
                    color: kGreenBackgroundColor,
                  ))
              : Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
        ),
      ),
    );
  }
}
