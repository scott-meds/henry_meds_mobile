import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/router/router.dart';
import 'package:henry_meds_mobile/widgets/custom_default_button.dart';
import 'package:henry_meds_mobile/widgets/custom_focus_remover.dart';
import 'package:henry_meds_mobile/widgets/custom_text_field_outlined.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFocusRemover(
      child: Scaffold(
        backgroundColor: kGreenBackgroundColor,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: kGreenBackgroundColor,
          title: SizedBox(
            width: 120,
            child: Image.asset('assets/images/logo_full_black.webp'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Column(
            children: [
              const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  'Enter your email and we will send you a link to reset your password',
                  style: TextStyle(
                    color: kTextGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: CustomTextFieldOutlined(
                  label: 'Email Address',
                  icon: Icons.email,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDefaultButton(
                title: 'Submit',
                onTap: () {
                  print('tapped');
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Have an account? Sign in',
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, AppRouter.signUp);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Don\'t have an account? Sign up',
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
