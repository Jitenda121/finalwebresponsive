//screen seven of the tab for displaying about the company

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/view/screen/small/bottomcard.dart';

class TabScreenSeven extends StatefulWidget {
  const TabScreenSeven({super.key});

  @override
  State<TabScreenSeven> createState() => _TabScreenSevenState();
}

class _TabScreenSevenState extends State<TabScreenSeven> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //conatiner for making the base
        Container(
          height: 700,
          color: Colors.white,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 580,
            width: MediaQuery.of(context).size.width * 1,
            color: AppColor.myColor1,
          ),
        ),
        const Center(
            child:
                //calling the function whcih is made in the small screen section
                BottomLoginCard()),
        //positiong of the text
        Positioned(
          bottom: 70,
          left: 10,
          right: 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 60,
                      child: Image.asset(
                        'images/info_B&W.png',
                        fit: BoxFit.contain,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Not a normal app, its unique!",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Services are provided everywhere.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset('images/logo1.png')
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "View Feeds",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Make Connections",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create Visiting cards",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create Different profile pages",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Links",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Privacy & Policy",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Terms & Connections",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 260,
                width: 1,
                color: Colors.white,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Contact US",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About US",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Help & Support",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Getting Started with FAQ",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
        //positioning of the bottom divider and text
        Positioned(
            bottom: 50,
            left: 15,
            right: 15,
            child: Container(
              height: 1,
              color: Colors.white,
            )),
        const Positioned(
          bottom: 30,
          left: 25,
          right: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "© Copyright Infoprofile LTD.",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                width: 95,
              ),
              Text(
                "All rights reserved.",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
