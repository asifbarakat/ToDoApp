import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {

  final bool value;
  final String taskName;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key, 
    required this.value, 
    required this.taskName, 
    required this.onChanged, 
    required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.orange,
              foregroundColor: Colors.black,
              label: 'Delete',
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Row(
            children:[
              //checkbox
              Checkbox(
                value: value, 
                onChanged: onChanged,
                activeColor: Colors.black,),
              Text(
                taskName,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  decoration: value ? TextDecoration.lineThrough : null,
                ),
                ),
            ]
          ),
          decoration: BoxDecoration(
            color: Colors.grey[500],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
