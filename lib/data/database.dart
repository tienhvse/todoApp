import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  //
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time you open the app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do gym", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
