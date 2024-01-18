import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller.dart';
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
      home: HomePage2(),
    );
  }
}

class HomePage extends StatelessWidget {
  //create an object of mycontroller to access the methods in the class
  Mycontroller mycontroller = Get.put(Mycontroller());

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
              //UI<==>Controller<==>model
              () => Text("Student name is ${mycontroller.student.name}"),
            ),
            ElevatedButton(
              onPressed: () {
                mycontroller.upperCase();
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
  Mycontroller2 mycontroller2 = Get.put(Mycontroller2());

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
              () => Text("Student name is ${mycontroller2.student.value.name}"),
            ),
            ElevatedButton(
              onPressed: () {
                mycontroller2.upperCase();
              },
              child: const Text("caps"),
            ),
          ],
        ),
      ),
    );
  }
}
