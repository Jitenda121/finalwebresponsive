//second screen of the web where the scroll function will land
import 'package:flutter/material.dart';
import 'package:screen15/custom/custom_text_style.dart';
import 'package:screen15/custom/rich_text1.dart';
import 'package:screen15/res/component/app_color.dart';
//import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_string.dart';
import 'package:screen15/view/screen/large/fifthstack.dart';
import 'package:screen15/view/screen/large/fourthstack.dart';
import 'package:screen15/view/screen/large/itemscard.dart';
import 'package:screen15/view/screen/large/laststack.dart';
import 'package:screen15/view/screen/large/secondstack.dart';
import 'package:screen15/view/screen/large/thirdstack.dart';

class RemainingScreen extends StatefulWidget {
  const RemainingScreen({super.key});

  @override
  State<RemainingScreen> createState() => _RemainingScreenState();
}

class _RemainingScreenState extends State<RemainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.myColor,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextStyle(
            text: AppString.infoprofileisdegined,
            fontSize: 38,
            fontWeight: FontWeight.bold,
            //color: AppColor.myColor,
          ),
          const SizedBox(
            height: 10,
          ),
          richTextW(context),
          const SizedBox(
            height: 30,
          ),
          //caling the info card class conating function to display properties
          const SiteCard(),
          const SizedBox(
            height: 40,
          ),
          //callig the other page classe to show them on screem
          const WebSecondStack(),
          const WebStackThird(),
          const WebStackFour(),
          const WebStackFive(),
          const WebLast()
        ],
      ),
    );
  }
}
