import 'package:flutter/material.dart';

class PageScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('two'),
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
                onPressed: () {},
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
                onPressed: () {},
                child: Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

