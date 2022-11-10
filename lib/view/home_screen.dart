import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_and_adaptive/controller/home_controller.dart';

class HomeLayoutScreen extends StatelessWidget {
  
 final HomeController controller = Get.put(HomeController());
  @override
//برجع الكلاس ل StateLess مش Stateful
  // int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Layout'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // GetBuilder<HomeController>(
          // init: HomeController(),
          // GetX<HomeController>(
          //   init: HomeController(),
          // builder: (controller)
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      // counter++;
                      // print(counter);
                      controller.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    )),
                // Text('$counter'),
                Text(
                  controller.counter.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                IconButton(
                    onPressed: () {
                      // counter--;
                      // print(counter);
                      controller.decrement();
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 30,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
