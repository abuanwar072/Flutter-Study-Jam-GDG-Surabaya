import 'package:flutter/material.dart';
import 'package:study_jam_shop/auth/signin_screen.dart';
import 'package:study_jam_shop/screens/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Color(0xFFB8B5C3)),
          filled: true,
          fillColor: Color(0xFFF8F8F9),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
      home: const SigninScreen(),
    );
  }
}
