import 'package:calclater/screen/calculater_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Calculater());
}
class Calculater extends StatelessWidget {
  const Calculater({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculaterScreen(),
    );
  }
}