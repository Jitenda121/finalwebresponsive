//fifthe screen of the tab with dots and text

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';

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
            color:
                // Colors.white,
                AppColor.myColor),
        //positioning of the rectangle
        Positioned(
            bottom: 70,
            child: SizedBox(
                height: 400, child: Image.asset(AppImage.lastrectangle))),
        //positioning of the dots on top left
        Image.asset(AppImage.dots),

        //positioning of the dots on bottom right
        Positioned(bottom: 0, right: 0, child: Image.asset(AppImage.dots)),
        //positiong of the download text and containers
        Positioned(
            top: 50,
            left: 240,
            child: Column(
              children: [
                SizedBox(height: 250, child: Image.asset(AppImage.download)),
                Text(
                  AppString.download1,
                  style: const TextStyle(
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
                          AppImage.googleplaystore,
                          fit: BoxFit.contain,
                        )),
                    const SizedBox(
                      width: 40,
                    ),
                    SizedBox(
                        width: 150,
                        child: Image.asset(
                          AppImage.appleplaystore,
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
