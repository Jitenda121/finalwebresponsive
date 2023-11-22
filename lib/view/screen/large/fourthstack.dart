//fourth stack screen of the web with download message

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';

class WebStackFour extends StatefulWidget {
  const WebStackFour({super.key});

  @override
  State<WebStackFour> createState() => _WebStackFourState();
}

class _WebStackFourState extends State<WebStackFour> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //container for setting the base in a stack
      Container(
        height: 600,
        color: AppColor.myColor,
      ),
      //positioning of the background rectangle
      Positioned(top: 50, child: Image.asset('images/last_rectangle_2.png')),
      //positioning of the dots image on the top left
      Positioned(
          top: 40,
          child: SizedBox(height: 150, child: Image.asset('images/dots.png'))),
      //positioning of the dots image on the bottom right
      Positioned(
          bottom: 30,
          right: 0,
          child: SizedBox(height: 150, child: Image.asset('images/dots.png'))),
      //positioning of the man displaying download
      Positioned(
          bottom: 90, right: 0, child: Image.asset('images/download.png')),
      //positionng of the text and conatiner displaying the app store and play store
      Positioned(
        top: 200,
        left: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Download our App from",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            //download icons for the app
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 150, child: Image.asset('images/app_store.png')),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                    width: 150, child: Image.asset('images/google_play.png'))
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
