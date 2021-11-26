import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_garden/constante.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Product('Théier', 'Antsirabe', 'theier.jpg'),
          Product('Takamaka', 'Mahanoro', 'Takamaka.jpg'),
          Product('Achillea', 'Tana', 'Achillea.jpg'),
          Product('Adiantum', 'Ambositra', 'Adiantum.jpg'),
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  final String title;
  final String region;
  final String image;

  Product(this.title, this.region, this.image, {Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 200,
          decoration: BoxDecoration(
            color: backgroundGrey,
            borderRadius: BorderRadius.circular(32),
          ),
          margin: EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * .1,
              ),
              Container(
                width: Get.width,
                height: Get.height * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: ExactAssetImage('assets/img/$image'))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal)),
                    Text(' $region',
                        style: TextStyle(
                            color: forestGreen, fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
