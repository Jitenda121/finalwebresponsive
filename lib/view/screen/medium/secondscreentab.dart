//second screen of the tab for displaying the download buttons of appstore and playstore

import 'package:flutter/material.dart';
import 'package:screen15/custom/rich_text1.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';
import 'package:screen15/view/screen/large/itemscard.dart';

class TabSecondScreen extends StatefulWidget {
  const TabSecondScreen({super.key});

  @override
  State<TabSecondScreen> createState() => _TabSecondScreenState();
}

class _TabSecondScreenState extends State<TabSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.myColor,
      // Colors.white,
      child: Column(
        children: [
          //download icons for the site
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150,
                  child: Image.asset(
                    AppImage.googleplaystore,
                    fit: BoxFit.contain,
                  )),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                  width: 150,
                  child: Image.asset(
                    AppImage.appleplaystore,
                    fit: BoxFit.contain,
                  ))
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          //properties of the app text
          Text(
            AppString.infoprofileisdegined,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
         
          richTextW(context),
          //calling the function which was made earlier to disply properties
          const SiteCard()
        ],
      ),
    );
  }
}
