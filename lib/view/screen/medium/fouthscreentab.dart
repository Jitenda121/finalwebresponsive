//fourth screen of the tab displaying image of man thinking and text

import 'package:flutter/material.dart';
import 'package:screen15/custom/rich_text_style4.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';

class TabStackFour extends StatefulWidget {
  const TabStackFour({super.key});

  @override
  State<TabStackFour> createState() => _TabStackFourState();
}

class _TabStackFourState extends State<TabStackFour> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //container for setting the base
        Container(
          height: 700,
          color:AppColor.myColor
          // Colors.white,
        ),
        //positioning of the man thinking
        Positioned(
            right: 200,
            top: 0,
            child: SizedBox(
                height: 400, child: Image.asset(AppImage.manthinking))),
        //positiong of the cards on the right
        Positioned(
            right: 0,
            top: 180,
            child:
                SizedBox(height: 500, child: Image.asset(AppImage.itemscard))),

        //positioing of the text on the stack
        Positioned(
          bottom: 0,
          right: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              richTextW4(context),
              const SizedBox(
                height: 20,
              ),
               Text(
               AppString.hereweproduce1,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ],
    );
  }
}
