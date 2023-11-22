//last stack screen of the web to display the login and about the compoany details

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';

class WebLast extends StatefulWidget {
  const WebLast({super.key});

  @override
  State<WebLast> createState() => _WebLastState();
}

class _WebLastState extends State<WebLast> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //stack for placing the content above one another
      children: [
        //container for definig the base
        Container(
          height: 500,
          color: AppColor.myColor,
        ),
        //positionig of the rectangle as the backgroung
        Positioned(
            bottom: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('images/last_rectangle.png'))),
        //positioning of the sized box above the rectangle containing login content
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 2,
              shadowColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 0, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Try Infoprofile for free",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Row(
                          children: [
                            Icon(Icons.check),
                            Text(
                              "   Multiple profiles",
                              style: TextStyle(fontSize: 12),
                            ),
                            Icon(Icons.check),
                            Text(
                              "  Creative",
                              style: TextStyle(fontSize: 12),
                            ),
                            Icon(Icons.check),
                            Text(
                              "  Build Connections",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //positioning of the text on the blue rectangle
        Positioned(
          bottom: 60,
          left: 0,
          right: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('images/info_B&W.png'),
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "View Feeds",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Make Connections",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Creating Companies",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mobile App",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Links",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Privacy & Policy",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Terms & Connections",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Contact US",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About US",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Help & Support",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Getting Started with FAQ",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: Container(
              height: 1,
              color: Colors.white,
            )),
        const Positioned(
          bottom: 30,
          left: 50,
          right: 50,
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
