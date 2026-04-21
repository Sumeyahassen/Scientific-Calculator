import 'package:flutter/material.dart';
class ClickButton extends StatelessWidget {
const ClickButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Clikable button" ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade500
          ),
          child: ElevatedButton(
            
            onPressed:()=>print("clicked") ,
           child: Text("Click Me")),
        ),
      ),
    );
  }
}