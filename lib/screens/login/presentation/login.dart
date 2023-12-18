import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/router/router.dart';
import 'package:henry_meds_mobile/screens/login/presentation/widgets/login_lined_text.dart';
import 'package:henry_meds_mobile/screens/login/presentation/widgets/login_password_field.dart';
import 'package:henry_meds_mobile/widgets/custom_default_button.dart';
import 'package:henry_meds_mobile/widgets/custom_focus_remover.dart';
import 'package:henry_meds_mobile/widgets/custom_text_field_outlined.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;
  bool isAdmin = false;
  int count = 0;

  void setIsLoading() {
    setState(() {
      isLoading = true;
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
        Navigator.pushReplacementNamed(
          context,
          AppRouter.home,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomFocusRemover(
      child: Scaffold(
        backgroundColor: kGreenBackgroundColor,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: kGreenBackgroundColor,
          title: GestureDetector(
              onTap: () {
                setState(() {
                  count++;
                  if (count > 10) {
                    isAdmin = true;
                  }
                });
              },
              child: SizedBox(
                width: 120,
                child: Image.asset('assets/images/logo_full_black.webp'),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Column(
            children: [
              const Text(
                'Sign in',
                style: TextStyle(fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDefaultButton(
                title: 'Don\'t have an account? Sign up',
                onTap: () {
                  print('tapped');
                  Navigator.pushNamed(context, AppRouter.signUp);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                child: LoginLinedText(title: 'or sign in with your email'),
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
              LoginPasswordField(onTyping: (value) {
                print(value);
              }),
              const SizedBox(
                height: 20,
              ),
              CustomDefaultButton(
                title: 'Sign in',
                isLoading: isLoading,
                onTap: setIsLoading,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRouter.forgotPassword);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              if (isAdmin)
                CustomDefaultButton(
                  title: 'Admin Login Shortcut',
                  isLoading: isLoading,
                  onTap: setIsLoading,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
