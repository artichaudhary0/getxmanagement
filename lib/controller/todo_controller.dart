import 'dart:convert';

import 'package:get/get.dart';
import 'package:getxmanagement/model/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoController extends GetxController {
  var TodoList = RxList<ToDoModel>();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  Future<RxList<ToDoModel>> getData() async {
    final response = await http.get(
      Uri.parse("https://663460979bb0df2359a15d80.mockapi.io/todoList/id"),
    );
    final data = jsonDecode(response.body.toString());

    print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 201) {
      for (Map<String, dynamic> item in data) {
        TodoList.add(
          ToDoModel.fromJson(item),
        );
      }
      return TodoList;
    } else {
      return TodoList;
    }
  }
}
