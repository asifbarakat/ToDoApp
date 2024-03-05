import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key,
   required this.controller,
   required this.onSave,
   required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.grey[300],
        content: Container(
          height: 120,
          child: Column(
            children: [
              //user input
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Add a new task',
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(text: "Save", onPressed: onSave),
                  SizedBox(width: 7.0),
                  MyButton(text: "Cancel", onPressed: onCancel),
                ],
              ),
            ],
          ),
        ));
  }
}
