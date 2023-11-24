//first screen of the chrome with login card
//screen with scrollable function to call or jump to other screen
import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string_tab.dart';
import 'package:screen15/view/screen/small/logincard.dart';

class FirstWeb extends StatefulWidget {
  const FirstWeb({required this.scrollScreen, super.key});

  final void Function() scrollScreen;

  @override
  State<FirstWeb> createState() => _FirstWebState();
}

class _FirstWebState extends State<FirstWeb> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //stack for placing items on one another
      children: [
        //container for setting the base
        Container(
          height: 800,
          color: AppColor.myColor,
        ),
        //positioning of the up white double rectangles
        Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
                height: 650,
                width: 200,
                child: Image.asset(AppImage.toprectanglewhite))),
        //positioning of the side blue rectangle
        Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
                height: 870, child: Image.asset(AppImage.toprectangleblue))),
        //positioing of the login card on the rectangle
        const Positioned(
            top: 60,
            right: 100,
            child: SizedBox(
                width: 500,
                height: 715,
                child:
                    //caling the login card class
                    LoginCard())),
        //positioning of the text
        Positioned(
            top: 250,
            left: 100,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // "Meet Your Best",
                    AppStringTab.meet,
                    style: const TextStyle(
                        fontSize: 55, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    //'Connections',
                    AppStringTab.connection,
                    style: const TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 2, 136, 246),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    //"Build fast, easy & lifelong professional connections.",
                    AppStringTab.buildfast,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .13,
                          child: Image.asset(AppImage.appleplaystore)),
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .13,
                          child: Image.asset(AppImage.googleplaystore))
                    ],
                  ),
                ],
              ),
            )),
        //positioning of the page image
        Positioned(
            top: 40,
            left: 120,
            child: SizedBox(
                height: 70,
                child: Image.asset(
                  //'images/info.png',
                  AppImage.info,
                  fit: BoxFit.cover,
                ))),
        //positioning of the scrollable functions
        Positioned(
          top: 650,
          left: 300,
          child: InkWell(
            onTap: () {
              widget.scrollScreen();
            },
            child: Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Icon(Icons.expand_more, color: AppColor.myColor1
                        //Color.fromARGB(255, 114, 202, 243),
                        ),
                    Icon(Icons.expand_more, color: AppColor.myColor1
                        // Color.fromARGB(255, 92, 149, 247),
                        ),
                    Icon(Icons.expand_more, color: AppColor.myColor1),
                  ],
                )),
          ),
        )
      ],
    );
  }
}
