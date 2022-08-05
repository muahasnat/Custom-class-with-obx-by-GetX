import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_statemanagement_using_obx/my_controller.dart';
import 'package:reactive_statemanagement_using_obx/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var count = 0.obs;
  // void increment() {
  //   count++;
  // }

  //var student = Student();
  //final student = Student(name: "Md.Abul Hasmat", age: 26).obs;
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'state management',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("State management"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetX<MyController>(
                    //init: MyController(),
                    builder: (controller) {
                  return Text("This value is ${myController.count}");
                }),

                ElevatedButton(
                    onPressed: () {
                      //Get.find<MyController>().increment();
                      myController.increment();
                    },
                    child: Text("Increment")),

                // Obx(() => Text("Count value is $count")),
                // SizedBox(
                //   height: 20,
                // ),
                // //Obx(() => Text("Name is ${student.value.name}")),
                // Obx(() => Text("Name is ${myController.student.value.name}")),
                // ElevatedButton(
                //     onPressed: () {
                //       increment();
                //     },
                //     child: Text("Increment")),
                // SizedBox(
                //   height: 20,
                // ),
                // ElevatedButton(
                //     onPressed: () {
                //       //student.name.value = student.name.value.toUpperCase();
                //       // student.update((student) {
                //       //   student?.name = student.name.toString().toUpperCase();
                //       // });
                //       //myController.convertToUppercase();
                //       myController.ConvertToUpperCase();
                //     },
                //     child: Text("Upper")
                //     ),
              ],
            ),
          ),
        ));
  }
}
