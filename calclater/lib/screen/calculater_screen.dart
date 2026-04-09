import 'package:calclater/screen/button_screen.dart';
import 'package:calclater/screen/input_field.dart';
import 'package:flutter/material.dart';

class CalculaterScreen extends StatelessWidget {
  const CalculaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InputField(),
            ButtonScreen(),
          ],

        ),
      ),
    );
  }
}