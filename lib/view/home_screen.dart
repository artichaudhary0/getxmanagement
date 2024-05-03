import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmanagement/controller/todo_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  TodoController controller = Get.put(TodoController());
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.defaultDialog(
              title: ("Add Task"),
              content: TextField(
                controller: textEditingController,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Save"),
                ),
              ],
            );
          },
          child: const Icon(Icons.add),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Obx(
                    () => Column(
                      children: controller.TodoList.map(
                        (e) => ListTile(
                          leading: Text(
                            e.id.toString(),
                            style: const TextStyle(color: Colors.blue),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                          ),
                        ),
                      ).toList(),
                    ),
                  );
                }),
          ),
        ]));
  }
}
