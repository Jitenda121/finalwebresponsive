//third screen of the tab for world image,side bubble image and text

import 'package:flutter/material.dart';
import 'package:screen15/custom/rich_text2.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_images_mobile.dart';
import 'package:screen15/res/component/app_string.dart';

class TabSecondStack extends StatefulWidget {
  const TabSecondStack({super.key});

  @override
  State<TabSecondStack> createState() => _TabSecondStackState();
}

class _TabSecondStackState extends State<TabSecondStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //for defining the base
        Container(
          color: AppColor.myColor,
          //Colors.white,
          height: 700,
        ),
        //positionb the side bubble image
        Positioned(
          top: 100,
          child: SizedBox(
              height: 500,
              child: Image.asset(
                AppImage.sidebubble,
                fit: BoxFit.contain,
              )),
        ),
        //positiong the world image
        Positioned(
          top: 30,
          left: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 400,
                  child: Image.asset(
                    AppImageMobile.worldimage,
                    fit: BoxFit.contain,
                  )),
              //column for displaying the text on the stack
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  richTextW1(context)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppString.adomain1,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
