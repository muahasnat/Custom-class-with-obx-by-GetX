import 'package:get/get.dart';
import 'package:reactive_statemanagement_using_obx/student.dart';

class MyController extends GetxController {
  // var student = Student();
  // void convertToUppercase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: "Abul Hasnat", age: 26).obs;
  void ConvertToUpperCase() {
    student.update((Student) {
      Student?.name = Student.name.toString().toUpperCase();
    });
  }
}
