import 'package:flutter/material.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(image, height: 250),
        Spacer(),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(description),
        Spacer(),
      ],
    );
  }
}
