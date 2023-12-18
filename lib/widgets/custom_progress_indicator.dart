import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator(
      {super.key, this.size = 100, this.indicatorWidth = 8});

  final double size;
  final double indicatorWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        strokeWidth: indicatorWidth,
      ),
    ));
  }
}
