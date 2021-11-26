import 'package:flutter/material.dart';
import 'package:holy_garden/constante.dart';
import 'package:palette_generator/palette_generator.dart';

class HomeSreen extends StatefulWidget {
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  final List<String> images = [
    "assets/img/rouge.jpg",
    "assets/img/vert.jpg",
    "assets/img/violet.jpg",
  ];
  late List<PaletteColor> dycolors;
  late int _index;
  @override
  void initState() {
    super.initState();
    dycolors = [];
    _index = 0;
    //addColor();
  }

  //final PaletteGenerator lightVibrantColor;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: forestGreen,
      appBar: AppBar(
        backgroundColor: dycolors.isEmpty
            ? Theme.of(context).primaryColor
            : dycolors[_index].color,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: PageView(
              onPageChanged: (int index) {},
              children: images
                  .map((image) => Container(
                        padding: const EdgeInsets.all(16.0),
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.cover),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
