import 'package:flutter/material.dart';

class CustomFocusRemover extends StatelessWidget {
  final Widget child;
  final VoidCallback? onRemoveFocus;

  const CustomFocusRemover({
    Key? key,
    required this.child,
    this.onRemoveFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        if (onRemoveFocus != null) {
          onRemoveFocus!.call();
        }
      },
      child: child,
    );
  }
}
