import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_garden/constante.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBlue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: Get.height * .1, left: Get.width * .10),
                  width: Get.width * .8,
                  child: Image.asset("assets/img/holy_garden.png")),
              Container(
                margin: EdgeInsets.only(
                    top: Get.height * .05, left: Get.width * .05),
                child: Container(
                  width: Get.width * .9,
                  height: Get.height * .55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 25.0),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/icon/logo.png"),
                      ),
                      SizedBox(height: 40.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              autofocus: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hoverColor: forestGreen,
                                hintText: 'Password',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                suffixIcon: GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.visibility),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                          ],
                        ),
                      ),
                      MaterialButton(
                          color: forestGreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'log in',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Get.toNamed('/acceuil');
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
