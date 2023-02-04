import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_and_adaptive/page_screen_1.dart';

class PageScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Three'),
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
                  Navigator.pushReplacementNamed(context, '/page_screen_1');
                  // Get.offAll(PageScreen1());
                  Get.offNamed('PageScreen1()');
                  // Get.off(PageScreen1());
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
                onPressed: () {
                  // Navigator.pop(context);
                  // Get.back();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => PageScreen3()),
                      (route) => false);
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
