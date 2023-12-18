import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/widgets/custom_default_button.dart';
import 'package:henry_meds_mobile/widgets/custom_focus_remover.dart';
import 'package:henry_meds_mobile/widgets/custom_text_field_outlined.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  Future<void> urlLauncher({required Uri url}) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

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
                'Sign up',
                style: TextStyle(fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  'If you have a subscription but no account, please create an account here',
                  style: TextStyle(
                    color: kTextGrey,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
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
                title: 'Sign up',
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
                  print('treatments page');
                  final Uri uri =
                      Uri.parse('https://henrymeds.com/treatments/');
                  urlLauncher(url: uri);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                  ),
                  child: SizedBox(
                      width: double.infinity,
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text:
                                  'If you don\'t have a subscription, please sign up for a treatment on our'),
                          TextSpan(
                            text: ' treatments page',
                            style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ], style: TextStyle(color: kTextGrey, fontSize: 15)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
