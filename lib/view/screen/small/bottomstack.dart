import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images_mobile.dart';
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
        color: Colors.white,
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
                  height: 30,
                ),
                Image.asset(AppImageMobile.logo1),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Features",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "View Feeds",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Make Connections",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Creating Visiting Cards",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create Different Profile Pages",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Links",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Terms & Connections",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Company",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Help & Support",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Getting Started FAQ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
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
                const Wrap(
                  direction: Axis.vertical,
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
