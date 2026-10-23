import 'package:book_app/features/onboarding/onboarding_page.dart';
import 'package:book_app/core/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MaterialTheme(TextTheme()).light(),
      darkTheme: MaterialTheme(TextTheme()).dark(),
      home: Scaffold(
        body: OnBoardingPage(),
      ),
    );
  }
}
