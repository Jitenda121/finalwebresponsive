//screen seven of the tab for displaying about the company
import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string_last_container.dart';
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
          color:AppColor.myColor
          // Colors.white,
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
                        AppImage.bw,
                        fit: BoxFit.contain,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                   Text(
                   // "Not a normal app, its unique!",
                   AppStringLastContainer.notanormal,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Text(
                    //"Services are provided everywhere.",
                    AppStringLastContainer.services,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                 // Image.asset('images/logo1.png'),
                   Image.asset(AppImage.logo1)
                ],
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   // "Features",
                   AppStringLastContainer.features,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                   // "View Feeds",
                   AppStringLastContainer.viewfeeds,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                   // "Make Connections",
                   AppStringLastContainer.makeconnection,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.createvisting,
                    // "Create Visiting cards",
                   /// AppStr
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    //"Create Different profile pages",
                    AppStringLastContainer.create,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                   // "Links",
                   AppStringLastContainer.links,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    //"Privacy & Policy",
                    AppStringLastContainer.privacy,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                   // "Terms & Connections",
                   AppStringLastContainer.termscondition,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 260,
                width: 1,
                color: Colors.white,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   // "Company",
                   AppStringLastContainer.company,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    //"Contact US",
                    AppStringLastContainer.contactus,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                   // "About US",
                   AppStringLastContainer.aboutus,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    //"Help & Support",
                    AppStringLastContainer.helpandsupport,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    //"Getting Started with FAQ",
                    AppStringLastContainer.gettingstartewd,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
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
         Positioned(
          bottom: 30,
          left: 25,
          right: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               // "© Copyright Infoprofile LTD.",
               AppStringLastContainer.copyright,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 95,
              ),
              Text(
                //"All rights reserved.",
               AppStringLastContainer.allrightreserved,
                style: const TextStyle(
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
