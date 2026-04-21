import 'package:flutter/material.dart';
class CounterApp extends StatefulWidget {
  const CounterApp({ Key? key }) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count=0;
  void add(){
    setState(() {
      count=count+1;
    });
  }
   void sub(){
    setState(() {
      count=count-1;
    });
  
  }
   void remove(){
    setState(() {
      count=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter $count"),),
      body: Center(
        child: Container(
          decoration: BoxDecoration(

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           ElevatedButton(onPressed:()=> add(), child: Text("Add")),
           ElevatedButton(onPressed:()=> sub(), child: Text("Substeract")),
           ElevatedButton(onPressed:()=> remove(), child: Text("Remove"))
            ],
          ),
        ),
        
      ),
    );
  }
}