//third screen of the tab for world image,side bubble image and text

import 'package:flutter/material.dart';

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
          color: Colors.white,
          height: 700,
        ),
        //positionb the side bubble image
        Positioned(
          top: 100,
          child: SizedBox(
              height: 500,
              child: Image.asset(
                'images/sidebuble.png',
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
                    'images/world_connect.png',
                    fit: BoxFit.contain,
                  )),
              //column for displaying the text on the stack
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'You can create ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Multiple profiles ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'for ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'your\naccount',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "A domain that helps you develop your skills through building\nmultiple portals to solve problems . All you need is a laptop and\nan attitude to learn and progress. We primarily deal with Web\nDev, App Dev and Blockchain elements.",
                style: TextStyle(
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
