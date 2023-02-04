import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_and_adaptive/page_screen_2.dart';
import 'package:responsive_and_adaptive/page_screen_3.dart';

class PageScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('one'),
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
                  // Get.to(PageScreen2());
                },
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
                onPressed: () {
                  //  Get.to(PageScreen3());
                  //  Navigator.pushReplacementNamed(context, '/page_screen_3');
                  // Get.toNamed('');
                },
                child: Text('Page 3'),
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
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
