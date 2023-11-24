import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_string.dart';
class RichText1 extends StatefulWidget {
  const RichText1({super.key});
  @override
  State<RichText1> createState() => _RichText1State();
}
class _RichText1State extends State<RichText1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: richTextW(context),
    );
  }
}
richTextW(context) {
  return RichText(
    text:  TextSpan(
      text: AppString.what,
      style: const TextStyle(
          color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
      children: [
        TextSpan(
          text: AppString.infoprofile,
          style: const TextStyle(
              color: Colors.blue, fontSize: 38, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:AppString.you,
          style: const TextStyle(
              color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
