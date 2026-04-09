import 'package:flutter/material.dart';
class ButtonScreen extends StatefulWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}
 
class _ButtonScreenState extends State<ButtonScreen> {
  @override
  final buttons=['1','2','3','4','5','6','7','8','9','%','=','0','+','-','X','/','x^n','sqr','sum','Del','(',')','.','!'];
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("1"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("2"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("3"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("4"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("5"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("6"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("7"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("8"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("9"),
          ),
           Container(
            height: 20,
            width: 20,
            color: Colors.pink[100],
            child: Text("0"),
          ),
        ],
        ),
      
    );
  }
}