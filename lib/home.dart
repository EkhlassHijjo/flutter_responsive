import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_and_adaptive/page_screen_1.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              height: 50,
              width: 150,
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {
                  //طريقة الاولى
                  // Navigator.pushNamed(context, '/page_screen_1');
                  //Get بدالها في
                  Get.toNamed('/page_screen_1');
                  // );
                  //طريقة الاولى
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => PageScreen1()),
                  // );
                  //الطريقة التانية
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => PageScreen1(),
                  //   ),
                  //   (route) {
                  //     return false;
                  //   }
                  // );
                  // Get.offAll(PageScreen1());
                  // Get.to(PageScreen1());
                  //  Get.off(PageScreen1());
                },
                child: Text('Page 1'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.red,
              height: 50,
              width: 150,
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {},
                child: Text('Page 2'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.red,
              height: 50,
              width: 150,
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {},
                child: Text('Page 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
