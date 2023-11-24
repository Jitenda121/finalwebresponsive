//fourth stack screen of the web with download message

import 'package:flutter/material.dart';
import 'package:screen15/custom/doublecurve.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';

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
      Positioned(
          top: 50,
          child: ClipPath(
            clipper: SlopingClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 450,
              color: const Color.fromARGB(255, 13, 96, 212),
            ),
          )

          //Image.asset(AppImage.lastrectangel)
          ),
      //positioning of the dots image on the top left
      Positioned(
          top: 40,
          child: SizedBox(height: 150, child: Image.asset(AppImage.dots))),
      //positioning of the dots image on the bottom right
      Positioned(
          bottom: 30,
          right: 0,
          child: SizedBox(height: 150, child: Image.asset(AppImage.dots))),
      //positioning of the man displaying download
      Positioned(
          bottom: 150,
          right: 80,
          child:
              SizedBox(height: 400, child: Image.asset(AppImage.download))),
      // Positioned(
      //     bottom: 90, right: 0, child: Image.asset(AppImage.download)),
      //positionng of the text and conatiner displaying the app store and play store
      Positioned(
        top: 200,
        left: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.dowload,
              style: const TextStyle(
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
                    width: 150, child: Image.asset(AppImage.appleplaystore)),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                    width: 150, child: Image.asset(AppImage.googleplaystore))
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
