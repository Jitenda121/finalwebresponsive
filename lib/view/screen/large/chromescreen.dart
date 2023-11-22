import 'package:flutter/material.dart';
import 'package:screen15/view/screen/large/firststackscreen.dart';
import 'package:screen15/view/screen/large/secondscreen.dart';

//main class of the chrome screen where all the other class will be called
class ChromeScreen extends StatefulWidget {
  const ChromeScreen({required this.scrollScreen, super.key});
//calling function for scrolling the web screen
  final void Function() scrollScreen;

  @override
  State<ChromeScreen> createState() => _ChromeScreenState();
}

class _ChromeScreenState extends State<ChromeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
      //first screen with scrollable feature
      FirstWeb(scrollScreen: widget.scrollScreen),
      //remaing screen of the web
      const RemainingScreen()
    ]);
  }
}
