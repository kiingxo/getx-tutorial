import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snack bar tutorial",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "SnackBar", "testing snackbar",
                  animationDuration: const Duration(milliseconds: 3000),
                  snackPosition: SnackPosition.BOTTOM,
                  titleText: const Text("Snackbar title 1"),
                  // messageText: const Text("israel"),
                  colorText: Colors.blue,
                  backgroundColor: Colors.blue,
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  icon: const Icon(Icons.abc),
                  // userInputForm: ,
                  onTap: (v) {
                    print("clicked");
                  },
                  overlayBlur: 2,
                );
              },
              child: const Text("Show snack bar"),
            ),
          ],
        ),
      ),
    );
  }
}
