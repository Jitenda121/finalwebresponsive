import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images_mobile.dart';
import 'package:screen15/res/component/app_string_last_container.dart';
import 'package:screen15/view/screen/small/bottomcard.dart';

class BottomStack extends StatefulWidget {
  const BottomStack({super.key});

  @override
  State<BottomStack> createState() => _BottomStackState();
}

class _BottomStackState extends State<BottomStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomStack1(context),
    );
  }
}

bottomStack1(context) {
  return Stack(
    children: [
      Container(
        height: 1060,
        color:
            // AppColor.myColor
            AppColor.myColor,
      ),
      Positioned(
        top: 140,
        child: Container(
          height: 1060,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.myColor1,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 140,
                ),
                SizedBox(
                    width: 200,
                    child: Image.asset(
                      AppImageMobile.bw,
                      fit: BoxFit.contain,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  //"Not a normal app, its unique!",
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
                  // "Services are provided everywhere.",
                  AppStringLastContainer.services,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(AppImageMobile.logo1),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  // "Features",
                  AppStringLastContainer.features,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  //"View Feeds",
                  AppStringLastContainer.viewfeeds,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  //"Make Connections",
                  AppStringLastContainer.makeconnection,

                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  //"Creating Visiting Cards",
                  AppStringLastContainer.createvisting,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  //"Create Different Profile Pages",
                  AppStringLastContainer.create,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  // "Links",
                  AppStringLastContainer.links,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  //"Privacy Policy",
                  AppStringLastContainer.privacy,

                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  // "Terms & Connections",
                  AppStringLastContainer.termscondition,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  //"Company",
                  AppStringLastContainer.company,

                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  // "About Us",
                  AppStringLastContainer.aboutus,

                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  // "Contact Us",
                  AppStringLastContainer.contactus,

                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  // "Help & Support",
                  AppStringLastContainer.helpandsupport,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  //"Getting Started FAQ",
                  AppStringLastContainer.gettingstartewd,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: 380,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  direction: Axis.vertical,
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
                      // "All rights reserved.",
                      AppStringLastContainer.allrightreserved,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
      const Center(child: BottomLoginCard()),
    ],
  );
}
