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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
            //using controller type
            GetX<Mycontroller>(
              //initialize conntroller
              init: Mycontroller(),
              builder: (controller) {
                return Text("Student name is ${controller.student.name}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                //get instance of  conntroller
                Get.find<Mycontroller>().upperCase();
              },
              child: const Text("capslocks"),
            ),
          ],
        ),
      ),
    );
  }
}
