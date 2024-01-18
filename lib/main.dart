import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Getx",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = 0.obs;
    void increase() {
      counter++;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text("counter: $counter"),
            ),
            ElevatedButton(
              onPressed: () {
                increase();
              },
              child: const Text("increase count"),
            ),
          ],
        ),
      ),
    );
  }
}
