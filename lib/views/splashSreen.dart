import 'package:flutter/material.dart';
import 'package:holy_garden/constante.dart';

import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.green, Colors.blue],
        )),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.32),
                height: MediaQuery.of(context).size.height * 0.20,
                child: Image.asset('assets/img/holy_garden.png')),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.275),
                child: Shimmer.fromColors(
                    baseColor: Colors.white,
                    highlightColor: forestGreen,
                    period: Duration(seconds: 2),
                    child: Text(
                      "Holy Garden",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "ProductSans",
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
