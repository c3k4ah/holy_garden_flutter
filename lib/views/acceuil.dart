import 'package:flutter/material.dart';
import 'package:holy_garden/constante.dart';
import 'package:holy_garden/views/widgets/bottom_panel.dart';
import 'package:holy_garden/views/widgets/headphone_banner.dart';
import 'package:holy_garden/views/widgets/product.dart';
import 'package:holy_garden/views/widgets/product_filters.dart';
import 'package:holy_garden/views/widgets/products_title.dart';

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundWhite,
              elevation: 0,
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.person_pin,
                      size: 36,
                      color: backgroundGrey,
                    )),
              ],
            ),
            body: Stack(
              children: [
                Container(
                  color: backgroundGrey,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: backgroundWhite,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(75))),
                  child: Column(
                    children: [
                      HeadphoneBanner(),
                      SizedBox(height: 20),
                      ProductsTitle(),
                      SizedBox(height: 10),
                      ProductFilters(),
                      SizedBox(height: 30),
                      Products(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 150.0,
          child: Stack(
            children: [
              Container(
                color: backgroundWhite,
              ),
              Container(
                decoration: BoxDecoration(
                    color: backgroundGrey,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(75))),
                child: BottomPanel(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
