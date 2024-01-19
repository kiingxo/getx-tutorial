import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
  var emailcontroller = TextEditingController();
  var storage = GetStorage();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Storage and Email Validation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: emailcontroller,
              ),
            ),
            //using controller type

            ElevatedButton(
              onPressed: () {
                if (GetUtils.isEmail(emailcontroller.text)) {
                  storage.write("email", emailcontroller.text);
                  Get.snackbar("Email stored", "gotten mailis",
                      snackPosition: SnackPosition.BOTTOM);
                } else {
                  Get.snackbar("Not an email", "Invalid email,Check email",
                      snackPosition: SnackPosition.BOTTOM);
                }
              },
              child: const Text("write"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                print("Email is ${storage.read("email")}");
              },
              child: const Text("Read"),
            ),
          ],
        ),
      ),
    );
  }
}
