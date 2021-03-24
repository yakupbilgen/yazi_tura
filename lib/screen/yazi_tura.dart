import 'dart:math';

import 'package:flutter/material.dart';

class YaziTura extends StatefulWidget {
  @override
  _YaziTuraState createState() => _YaziTuraState();
}

class _YaziTuraState extends State<YaziTura> {
  String imageUrl = "../assets/images/1tl.png";
  String buttonText = "Yazı\nTura";

  randNumberMethod() {
    Random rnd = Random();
    int rndNumber = rnd.nextInt(2);
    print(rndNumber);
    setState(() {
      if (rndNumber == 0) {
        buttonText = "Yazı";
        imageUrl = "../assets/images/1tlon.png";
      } else {
        buttonText = "Tura";
        imageUrl = "../assets/images/1tlarka.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: deviceWidth * 0.7,
                height: deviceHeight * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(imageUrl),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              ElevatedButton(
                onPressed: randNumberMethod,
                child: Text(buttonText, style: TextStyle(fontSize: 50)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
