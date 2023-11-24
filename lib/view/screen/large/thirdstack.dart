//third stack screen for displaying image and content
import 'package:flutter/material.dart';
import 'package:screen15/custom/rich_text3.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';

class WebStackThird extends StatefulWidget {
  const WebStackThird({super.key});

  @override
  State<WebStackThird> createState() => _WebStackThirdState();
}

class _WebStackThirdState extends State<WebStackThird> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //for defining the base
          height: 500,
          color: AppColor.myColor,
        ),
        //positioning of the card image on the right
        Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
                height: 400,
                child: Image.asset(
                  AppImage.itemscard,
                  fit: BoxFit.contain,
                ))),
        //positioning of the man thinking on the stack
        Positioned(
            top: 40,
            left: 10,
            child: SizedBox(
                height: 400,
                child: Image.asset(
                  AppImage.manthinking,
                  fit: BoxFit.contain,
                ))),
        //positioning of the text on the card image
        Positioned(
            top: 10,
            right: 60,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  richTextW3(context),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppString.hereweproduce,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
