import 'dart:math';

import 'package:flutter/material.dart';

class YaziTura extends StatefulWidget {
  @override
  _YaziTuraState createState() => _YaziTuraState();
}

class _YaziTuraState extends State<YaziTura> {
  String imageUrl = "./assets/images/1tl.png";
  String buttonText = "Yazı mı?\nTura mı?";
  int totalTura = 0;
  int totalYazi = 0;

  buildRandNumber() {
    Random rnd = Random();
    int rndNumber = rnd.nextInt(2);
    print(rndNumber);
    setState(() {
      if (rndNumber == 0) {
        buttonText = "Yazı Geldi\nTekrar Dene";
        imageUrl = "./assets/images/1tlon.png";
        totalYazi++;
      } else {
        buttonText = "Tura Geldi\nTekrar Dene";
        imageUrl = "./assets/images/1tlarka.png";
        totalTura++;
      }
    });
  }

  clearTotal() {
    setState(() {
      totalTura = 0;
      totalYazi = 0;
      buttonText = "Yazı mı?\nTura mı?";
      imageUrl = "./assets/images/1tl.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: deviceWidth * 0.7,
                height: deviceHeight * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Image.asset(imageUrl),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Toplam tura: $totalTura \nToplam yazı: $totalYazi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                onPressed: buildRandNumber,
                child: Text(buttonText, style: TextStyle(fontSize: 30)),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                onPressed: clearTotal,
                child: Text("Sıfırla", style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
