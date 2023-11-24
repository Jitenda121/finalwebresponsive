import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_string.dart';

//import 'package:screen15/res/component/app_string.dart';
class RichText1 extends StatefulWidget {
  const RichText1({super.key});
  @override
  State<RichText1> createState() => _RichText1State();
}

class _RichText1State extends State<RichText1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: richTextW4(context),
    );
  }
}
richTextW4(context) {
  return RichText(
    text:  TextSpan(
      text: AppString.be,
      style: const TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      children: [
        TextSpan(
          text: AppString.creative,
          style: const TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppString.inyour,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppString.ownway,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppString.buildingnn,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppString.community,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
