// import 'package:calclater/screen/button_screen.dart';
// import 'package:calclater/screen/calculater_screen.dart';
// ButtonScreen(),
// import 'package:calclater/widget/hello_world.dart';
// HelloWorld() 
import 'package:calclater/widget/click_button.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Calculater());
}
class Calculater extends StatelessWidget {
  const Calculater({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ClickButton()
    );
  }
}