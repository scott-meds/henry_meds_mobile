import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';

class LoginPasswordField extends StatefulWidget {
  const LoginPasswordField({
    super.key,
    required this.onTyping,
  });

  final Function(String) onTyping;

  @override
  State<LoginPasswordField> createState() => _LoginPasswordFieldState();
}

class _LoginPasswordFieldState extends State<LoginPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon: const Icon(
            Icons.lock,
            color: kIconGrey,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: kIconGrey,
            ),
            color: kTextGrey,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: kTextGrey,
            ),
          ),
        ),
        onChanged: (value) {
          widget.onTyping.call(value);
        },
      ),
    );
  }
}
