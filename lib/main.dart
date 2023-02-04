import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_and_adaptive/botton_sheet.dart';
import 'package:responsive_and_adaptive/date_time.dart';
import 'package:responsive_and_adaptive/desktop_screen.dart';
import 'package:responsive_and_adaptive/example.dart';
import 'package:responsive_and_adaptive/home.dart';
import 'package:responsive_and_adaptive/mobile_screen.dart';
import 'package:responsive_and_adaptive/page_screen_1.dart';
import 'package:responsive_and_adaptive/page_screen_2.dart';
import 'package:responsive_and_adaptive/page_screen_3.dart';
import 'package:responsive_and_adaptive/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/home',
      home: BootomSheetScrren(),
      // routes: {
      //   '/home': (context) => HomeScreen(),
      // },
      getPages: [
       GetPage(name: '/home' , page: () => HomeScreen(),),
       GetPage(
          name: '/page_screen_1',
          page: () => PageScreen1(),
        ),
        GetPage(
          name: '/page_screen_2',
          page: () => PageScreen2(),
        ),
         GetPage(
          name: '/page_screen_3',
          page: () => PageScreen3(),
        ),
      ],
      // home: Builder(
      //   builder: (context) {
      //     MediaQuery.of(context).size.width;
      //     print(MediaQuery.of(context).size.width);
      //     if (MediaQuery.of(context).size.width <= 560)
      //       return MediaQuery(
      //         data: MediaQuery.of(context).copyWith(
      //           textScaleFactor: 0.5,
      //         ),
      //         child: MobileScreen(),
      //       );
      //     return DesktopScreen();
      //   },
      //   //نفس الكلام
      // ),
      // home: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     print(constraints.minWidth.toInt());
      //     if (constraints.minWidth.toInt() <= 560) return MobileScreen();
      //     return DesktopScreen();
      //   },
      // ),
    );
  }
}
