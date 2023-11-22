//first screen of the tab with images and text and login card

import 'package:flutter/material.dart';
import 'package:screen15/view/screen/small/logincard.dart';


class TabFirstStack extends StatefulWidget {
  const TabFirstStack({super.key});

  @override
  State<TabFirstStack> createState() => _TabFirstStackState();
}

class _TabFirstStackState extends State<TabFirstStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //container for defining the  base
        Container(
          height: 1000,
          color: Colors.white,
        ),
        //positionig of the blue rectangle
        Positioned(
          right: 0,
          child: SizedBox(
              height: 800, child: Image.asset('images/top_rectangle_blue.png')),
        ),
        //positioning of the rectangle white
        Image.asset('images/top_rectangle_white.png'),

        //allignment of the text on the images of the rectangle

        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset('images/info.png'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Meet Your Best",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Connections',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 2, 136, 246),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Build fast, easy & lifelong professional connections.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                  width: 500,
                  child:

                      //calling the login card class which was earlier made in the web

                      LoginCard())
            ],
          ),
        )
      ],
    );
  }
}
