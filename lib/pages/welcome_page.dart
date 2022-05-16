import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png"
  ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("img/"+images[index]),
            fit: BoxFit.cover
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 150,
              left: 20,right: 20
            ),
            child: Row(
              children: [
                Column(
                  children: [
                     
                  ],
                )
              ]),
          ),
        );
        }
      ));
  }
}