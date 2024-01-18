import 'package:get/get.dart';
import 'package:getx_tutorial/student.dart';

//creating a getx controller that hold the BL
class Mycontroller extends GetxController {
  var student = Student1();
  upperCase() {
    if (student.name.value == student.name.value.toUpperCase()) {
      student.name.value = student.name.value.toLowerCase();
    } else {
      student.name.value = student.name.value.toUpperCase();
    }
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
