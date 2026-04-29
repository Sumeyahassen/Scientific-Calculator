
import 'dart:math';
import 'package:calclater/model/todo.dart';
import 'package:calclater/widget/add_todo_bar.dart';
import 'package:calclater/widget/todo_items.dart';
import 'package:flutter/material.dart';
class TodoScreen extends StatefulWidget {
  // consteracter
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List <Todo> todos=[];
  final TextEditingController controller=TextEditingController();
  void addTodo(){
    if(controller.text.isNotEmpty){
      setState(() {
        todos.add(Todo(id: Random().nextInt(1000).toString(), text: controller.text));
        // after the button is click  cliear contante
        controller.clear();
      });
       
    }
  }
  void deletTodo(String id){
    setState(() {
      todos.removeWhere((todo)=>todo.id==id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo App"),),
      body:Column(
       children: [
         AddTodoBar(controller:controller,onAdd:addTodo),
         Expanded(child:todos.isEmpty? Center(
          child: Text("No task yet add task"),
         ):
         ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return TodoItems(todo: todos[index], onDelet: ()=>deletTodo(todos[index].id));
          } ,
         ))
       ],
      ) ,
    );
  }
}