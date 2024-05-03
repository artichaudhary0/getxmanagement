import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmanagement/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   bool isBack = false;
//
//   @override
//   Widget build(BuildContext context) {
//     CountController controller =
//         Get.put(CountController()); // dependency injection
//
//     return PopScope(
//       canPop: isBack,
//       onPopInvoked: (bool sajjan) {
//         if (sajjan) {
//           return;
//         }
//         Get.defaultDialog(
//             title: "Exit",
//             content: Text("Are you sure"),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   Navigator.pop(context);
//                 },
//                 child: Text("Yes"),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text("No"),
//               ),
//             ]);
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Center(
//           // Center is a layout widget. It takes a single child and positions it
//           // in the middle of the parent.
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Obx(() {
//                 return Text(
//                   '${controller.count}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               }),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   FloatingActionButton(
//                     onPressed: () {
//                       controller.decrement();
//                       print(controller.count);
//                     },
//                     tooltip: 'Increment',
//                     child: const Icon(Icons.minimize),
//                   ),
//                   FloatingActionButton(
//                     onPressed: () {
//                       controller.increment();
//                       print(controller.count);
//                       // Get.changeTheme(ThemeData.light());
//                     },
//                     tooltip: 'Increment',
//                     child: const Icon(Icons.add),
//                   ),
//                   FloatingActionButton(
//                     onPressed: () {
//                       Get.changeTheme(
//                         Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
//                       );
//                     },
//                     tooltip: 'Increment',
//                     child: const Icon(Icons.format_paint),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CountController extends GetxController {
//   var count = 0.obs;
//   RxBool isTrue = true.obs;
//   increment() => count++;
//   decrement() {
//     count--;
//   }
// }



//
