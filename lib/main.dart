import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tutorial/controller.dart';

void main() async {
  await GetStorage.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
  //creating instance of controller
  // Mycontroller mycontroller =
  //     Get.put(Mycontroller(), tag: "instance1", permanent: true);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //async operation
    Get.putAsync<Mycontroller>(
      () async => Mycontroller(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("dependency injection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<Mycontroller>().increament();
              },
              child: const Text("click"),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
