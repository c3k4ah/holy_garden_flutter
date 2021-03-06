import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_garden/views/acceuil.dart';
import 'package:holy_garden/views/details.dart';
import 'package:holy_garden/views/home.dart';
import 'package:holy_garden/views/login.dart';
// ignore: unused_import
import 'package:holy_garden/views/splashSreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 4000), () {
      Get.offNamed('/login');
    });
    return GetMaterialApp(
        theme:
            ThemeData(primarySwatch: Colors.green, fontFamily: "ProductSans"),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeSreen(),
          '/acceuil': (context) => Acceuil(),
          '/login': (context) => LoginPage(),
          '/detail': (context) => DetailPage()
        });
  }
}
