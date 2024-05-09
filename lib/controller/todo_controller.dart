import 'dart:convert';
import 'package:get/get.dart';
import 'package:getxmanagement/model/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoController extends GetxController {
  var todoList = RxList<ToDoModel>();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  // get
  Future<RxList<ToDoModel>> getData() async {
    final response = await http.get(
      Uri.parse("https://663465729bb0df2359a16c7b.mockapi.io/id"),
    );
    final data = jsonDecode(response.body.toString());

    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      for (Map<String, dynamic> item in data) {
        todoList.add(
          ToDoModel.fromJson(item),
        );
      }
      return todoList;
    } else {
      return todoList;
    }
  }

  // post
  Future postData(String description) async {
    final response = await http.post(
      Uri.parse("https://663465729bb0df2359a16c7b.mockapi.io/id"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        ToDoModel(description: description),
      ),
    );

    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      todoList.clear();
      getData();
    } else {
      print("failed");

    }
  }


  Future deleteData(id) async {
    final response = await http.delete(
      Uri.parse("https://663465729bb0df2359a16c7b.mockapi.io/id/$id"),
    );

    print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 201) {
      todoList.clear();
      getData();
    } else {
      print("failed");

    }
  }


}
