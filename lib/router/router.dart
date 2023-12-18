import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/screens/forgot_password/presentation/forgot_password.dart';
import 'package:henry_meds_mobile/screens/home/presentation/home.dart';
import 'package:henry_meds_mobile/screens/login/presentation/login.dart';
import 'package:henry_meds_mobile/screens/sign_up/presentation/sign_up.dart';

class AppRouter {
  static const String login = '/login';
  static const String home = '/home';
  static const String signUp = '/signUp';
  static const String forgotPassword = '/follow_password';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => const Login(),
    home: (context) => const Home(),
    signUp: (context) => const SignUp(),
    forgotPassword: (context) => const ForgotPassword(),
  };
}
