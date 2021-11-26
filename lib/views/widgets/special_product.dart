import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_garden/constante.dart';

import 'product.dart';

class SpecialProduct extends Product {
  SpecialProduct(String title, String region, String image)
      : super(title, region, image);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: secondaryBackgroundGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBox(width: 24),
          Container(
            decoration: BoxDecoration(
              color: backgroundWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Center(
                child: IconButton(
                    iconSize: 35,
                    onPressed: () {
                      Get.toNamed('/detail');
                    },
                    icon: Icon(Icons.collections))),
            width: 120,
            height: 50,
          ),
          SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
                color: backgroundWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(50),
                )),
            child: Center(
                child: IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: Icon(Icons.photo_camera))),
            width: 120,
            height: 50,
          ),
        ],
      ),
    );
  }
}
