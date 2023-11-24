//second stack screen of the web below the second screen to show about content
import 'package:flutter/material.dart';
import 'package:screen15/custom/rich_text2.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';

class WebSecondStack extends StatefulWidget {
  const WebSecondStack({super.key});
  @override
  State<WebSecondStack> createState() => _WebSecondStackState();
}

class _WebSecondStackState extends State<WebSecondStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //containe for defining the base
        Container(
          height: 650,
          color: AppColor.myColor,
        ),
        //posiotioning of the side bubble image
        Positioned(
            top: 30,
            child:
                SizedBox(height: 600, child: Image.asset(AppImage.sidebubble))),
        //positioning of the text on the stack
        Positioned(
            top: 100,
            left: 100,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  richTextW1(context),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppString.adomain,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
        //positioning of the dancing man
        Positioned(
            right: 70,
            top: 40,
            child: SizedBox(
                height: 400,
                child: Image.asset(
                  AppImage.dancingman,
                  fit: BoxFit.contain,
                )))
      ],
    );
  }
}
