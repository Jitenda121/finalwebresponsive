//fifthe stacks screen of the web containing the world image and text

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';

class WebStackFive extends StatefulWidget {
  const WebStackFive({super.key});

  @override
  State<WebStackFive> createState() => _WebStackFiveState();
}

class _WebStackFiveState extends State<WebStackFive> {
  @override
  Widget build(BuildContext context) {
    //using stack to place the text above cards image
    return Stack(
      children: [
        //container for setting the base
        Container(
          height: 500,
          color:AppColor.myColor,
        ),
        //positioning of the world image
        Positioned(
            top: 50,
            left: 30,
            child: SizedBox(
                height: 350,
                child: Image.asset(
                 AppImage.world,
                  fit: BoxFit.contain,
                ))),
        //positoning of the white rectangle image
        Positioned(
            top: 80,
            right: 0,
            child: SizedBox(
                height: 300,
                child: Image.asset(
                  AppImage.bottomrectangle,
                  fit: BoxFit.cover,
                ))),
        //positiong of the text on the rectangle
        Positioned(
          top: 30,
          right: 50,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.30,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 AppString.makefriend,
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                 AppString.thebestdomain,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
