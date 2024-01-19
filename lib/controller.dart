import 'package:get/get.dart';
import 'package:getx_tutorial/student.dart';
import 'package:shared_preferences/shared_preferences.dart';

//creating a getx controller that hold the BL
class Mycontroller extends GetxController {
  void increament() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt("counter") ?? 0) + 1;
    print("Pressed $counter times");
    await prefs.setInt("counter", counter);
  }
}

class Mycontroller2 extends GetxController {
  var student = Student2(name: "Israel", age: 40).obs;
  upperCase() {
    student.update((val) {
      student.value.name = student.value.name.toString().toUpperCase();
    });
  }
}
