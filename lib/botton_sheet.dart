import 'package:flutter/material.dart';

class BootomSheetScrren extends StatelessWidget {
  final bool isBootomSheetShowen = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if (isBootomSheetShowen) {
          //   print(null);
          // } else {
          //   scaffoldKey.currentState!.showBottomSheet((context) => Container(
          //     color: Colors.red,
          //     height: 300,

          //   ));
          // }
          scaffoldKey.currentState!.showBottomSheet((context) => Container(
            // color: Colors.black,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.black,
            //  border: 
            ),
           
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
