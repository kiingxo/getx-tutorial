import 'package:get/get.dart';

//obs on individual var
class Student1 {
  var name = "Israel".obs;
  var age = 25.obs;
}

//creating a constrctor of a class to obs on the entire class when an obbject is created
class Student2 {
  var name;
  var age;
  Student2({required this.name, required this.age});
}
