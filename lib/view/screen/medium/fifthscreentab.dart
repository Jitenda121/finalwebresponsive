//fifthe screen of the tab with dots and text

import 'package:flutter/material.dart';

class TabScreenFive extends StatefulWidget {
  const TabScreenFive({super.key});

  @override
  State<TabScreenFive> createState() => _TabScreenFiveState();
}

class _TabScreenFiveState extends State<TabScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //conatiner for defining the base
        Container(
          height: 500,
          color: Colors.white,
        ),
        //positioning of the rectangle
        Positioned(
            bottom: 70,
            child: SizedBox(
                height: 400, child: Image.asset('images/last_rectangle.png'))),
        //positioning of the dots on top left
        Image.asset('images/dots.png'),

        //positioning of the dots on bottom right
        Positioned(bottom: 0, right: 0, child: Image.asset('images/dots.png')),
        //positiong of the download text and containers
        Positioned(
            top: 50,
            left: 240,
            child: Column(
              children: [
                SizedBox(
                    height: 250, child: Image.asset('images/download.png')),
                const Text(
                  "Download Our App",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                        width: 150,
                        child: Image.asset(
                          'images/google_play.png',
                          fit: BoxFit.contain,
                        )),
                    const SizedBox(
                      width: 40,
                    ),
                    SizedBox(
                        width: 150,
                        child: Image.asset(
                          'images/app_store.png',
                          fit: BoxFit.contain,
                        ))
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
