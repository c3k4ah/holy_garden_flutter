import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:holy_garden/constante.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            //margin: EdgeInsets.only(top: Get.height * .1),
            height: Get.height * .35,
            width: Get.width,
            color: darkBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        color: Colors.white,
                        iconSize: 30,
                      ),
                      Icon(
                        Icons.circle_notifications,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * .05,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondaryBackgroundGrey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning_amber,
                          size: 25,
                          color: Colors.red,
                        ),
                        Text(
                          "Ce plante a besoin de plus d'entretient",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                        ),
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: Get.height * .4,
              color: darkBlue,
              child: Stack(
                children: [
                  Container(
                    color: darkBlue,
                  ),
                  Stack(alignment: Alignment.bottomCenter, children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(50)),
                          image: DecorationImage(
                              image:
                                  ExactAssetImage("assets/img/plante_ESTI.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 15,
                              color: darkBlue,
                              blurRadius: 15,
                              offset: Offset(2, 5),
                            )
                          ]),
                    ),
                  ])
                ],
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: Get.height * .25,
            width: Get.width,
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  "Diagnostique de la plant",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "- Etat biologique",
                      style: TextStyle(
                          fontSize: 25,
                          color: darkBlue,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.check_circle,
                      color: forestGreen,
                      size: 30,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "- Humidité",
                      style: TextStyle(
                          fontSize: 25,
                          color: darkBlue,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.unpublished,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "- Stabilité",
                      style: TextStyle(
                          fontSize: 25,
                          color: darkBlue,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.unpublished,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
