import 'package:flutter/material.dart';

import 'components/signin_form.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_light.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Log in with your data that you intered during your registration.",
                  ),
                  SizedBox(height: 24),
                  SiginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
