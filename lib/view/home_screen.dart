import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmanagement/controller/todo_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  TodoController controller = Get.put(TodoController());
  TextEditingController editController = TextEditingController();
  TextEditingController deleteController = TextEditingController();
  @override
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
                  controller.postData(textEditingController.text);
                  Get.back();
                },
                child: const Text("Save"),
              ),
            ],
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Obx(
                  () => Column(
                    children: controller.todoList
                        .map(
                          (e) => ListTile(
                            leading: Text(
                              e.description.toString(),
                              style: const TextStyle(color: Colors.blue),
                            ),
                            trailing: Container(
                              width: 100,
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      {
                                        Get.defaultDialog(
                                          title: ("Delete  Task"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                controller.deleteData(e.id);
                                                Get.back();
                                              },
                                              child: const Text("Delete"),
                                            ),
                                          ],
                                        );
                                      }
                                      ;
                                    },
                                    icon: Icon(Icons.delete),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      {
                                        Get.defaultDialog(
                                          title: ("Edit  Task"),
                                          content: TextField(
                                            controller: editController,
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text("Save"),
                                            ),
                                          ],
                                        );
                                      }
                                      ;
                                    },
                                    icon: Icon(Icons.edit),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
