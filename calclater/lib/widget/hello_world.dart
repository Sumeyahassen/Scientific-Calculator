import 'package:flutter/material.dart';
class HelloWorld extends StatelessWidget {
const HelloWorld({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(child: 
    Scaffold(
      backgroundColor: Colors.green,
      body: 
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            
            border: Border(
              left: BorderSide(color: Colors.red,),
               right: BorderSide(color: Colors.yellow),
               top: BorderSide(color: Colors.blue),
                 bottom: BorderSide(color: Colors.purple),
            )
          ),
          child: Text("Hello World",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white,),
        ),
            ),
      ),
    ),
    );
  }
}