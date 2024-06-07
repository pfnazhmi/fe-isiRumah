import 'package:flutter/material.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/feature/signin_page.dart';
import 'package:isirumah/feature/signup_page.dart';
import 'package:isirumah/feature/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
