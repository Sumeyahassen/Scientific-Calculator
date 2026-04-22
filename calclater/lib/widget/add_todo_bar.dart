import 'package:flutter/material.dart';
class AddTodoBar extends StatelessWidget {
 final TextEditingController controller;
 final VoidCallback onAdd;
//  consteracter
  const AddTodoBar({super.key,
  required this.controller,
  required this.onAdd
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child:TextField(
              controller: controller,
              decoration: InputDecoration(
               hintText: "Enter todo ...",
               border: OutlineInputBorder()
              ),
            ),
             ),
             SizedBox(width: 10,),
             IconButton(onPressed: onAdd, icon: Icon(Icons.add,color: Colors.green,size: 40,))
        ],
      ),
    );
  }
}