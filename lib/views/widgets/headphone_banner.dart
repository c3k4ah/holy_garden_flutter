import 'package:flutter/material.dart';
import 'package:holy_garden/constante.dart';

class HeadphoneBanner extends StatelessWidget {
  const HeadphoneBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Stack(children: [
        Container(
          height: 140,
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage(
                'assets/img/verte.jpg',
              ),
            ),
            color: backgroundGrey,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ]),
    );
  }
}
