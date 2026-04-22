import 'package:calclater/model/todo.dart';
import 'package:flutter/material.dart';
class TodoItems extends StatelessWidget {
  final Todo todo;
 final VoidCallback onDelet;
const TodoItems({ Key? key,required this.todo,required this.onDelet }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(todo.text),
      trailing: IconButton(onPressed: onDelet, icon: Icon(Icons.delete,color: Colors.red,)),
    );
  } 
}