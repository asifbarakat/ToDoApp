import 'package:hive_flutter/adapters.dart';


class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  //run this method if the box is empty
  void createInitialData() {
    toDoList = [
      ['Practice coding', false],
      ['Clean the house', false],
      ['Finish assignments', false],
      ['Do some light exercise', false],
    ];
  }

  //load the data from database
  void LoadData() {
    toDoList = _myBox.get("TODOLIST");

  }

  // update the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
