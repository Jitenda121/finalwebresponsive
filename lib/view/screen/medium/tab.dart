//main screen of the tab where all the classes are called for displaying the text

import 'package:flutter/material.dart';
import 'package:screen15/view/screen/medium/fifthscreentab.dart';
import 'package:screen15/view/screen/medium/screenseventab.dart';
import 'package:screen15/view/screen/medium/sixthsxreentab.dart';
import 'package:screen15/view/screen/medium/firstscreentab.dart';
import 'package:screen15/view/screen/medium/fouthscreentab.dart';
import 'package:screen15/view/screen/medium/secondscreentab.dart';
import 'package:screen15/view/screen/medium/thirdstackweb.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //calling all the screen of the tab to display on the screen
          TabFirstStack(),
          TabSecondScreen(),
          TabSecondStack(),
          TabStackFour(),
          TabScreenFive(),
          TabScreenSix(),
          TabScreenSeven()
        ],
      ),
    );
  }
}
