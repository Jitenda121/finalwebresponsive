//fifthe stacks screen of the web containing the world image and text

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';

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
                  'images/world.png',
                  fit: BoxFit.contain,
                ))),
        //positoning of the white rectangle image
        Positioned(
            top: 80,
            right: 0,
            child: SizedBox(
                height: 300,
                child: Image.asset(
                  'images/white_rectangle_bottom.png',
                  fit: BoxFit.cover,
                ))),
        //positiong of the text on the rectangle
        Positioned(
          top: 30,
          right: 50,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.30,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Make friends by Building connections that are relevant to you.",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The best domain for a real-time experience of the corporate world . Improving your communication and time management skills is the main prospect. PR, Sponsorship, Social media handling , Treasury, and Marketing are elements of this domain.",
                  style: TextStyle(
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
