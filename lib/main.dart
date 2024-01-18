import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/student.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Getx",
      home: HomePage(),
    );
  }
}

//obs on individal variables in the class
class HomePage extends StatelessWidget {
  var student = Student1();
  // var studentName = Student().name.value;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateManagement"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text("Student name is ${student.name.value}"),
            ),
            ElevatedButton(
              onPressed: () {
                if (student.name.value == student.name.value.toUpperCase()) {
                  student.name.value = student.name.value.toLowerCase();
                } else {
                  student.name.value = student.name.value.toUpperCase();
                }
              },
              child: const Text("capslock"),
            ),
          ],
        ),
      ),
    );
  }
}

//obs on the entire class
class HomePage2 extends StatelessWidget {
  var student = Student2(name: "Israel", age: 40).obs;

  HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateManagement"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text("Student name is ${student.value.name}"),
            ),
            ElevatedButton(
              onPressed: () {
                student.update((val) {
                  student.value.name =
                      student.value.name.toString().toUpperCase();
                });
              },
              // onPressed: () {
              //   if (student.value.name ==
              //       student.value.name.toString().toUpperCase()) {
              //     student.value.name =
              //         student.value.name.toString().toLowerCase();
              //   } else {
              //     student.value.name = student.value.toString().toUpperCase();
              //   }
              // },
              child: const Text("caps"),
            ),
          ],
        ),
      ),
    );
  }
}
