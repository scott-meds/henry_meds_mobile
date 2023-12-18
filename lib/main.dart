import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/router/router.dart';

void main() {
  //TODO: List
  // Separate widgets into custom widgets
  // Micro-Service architecture (slowly grow)
  // Firebase integration
  // Backend data (models, states)
  // Datadog integration
  // Unit tests
  // Figure project names
  // Create account in iOS and Android and upload test versions
  // Launch styling web sheet for designers

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henry Meds Customer Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF26836C)),
        useMaterial3: true,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16.0),
        ),
      ),
      initialRoute: AppRouter.login,
      routes: AppRouter.routes,
    );
  }
}
