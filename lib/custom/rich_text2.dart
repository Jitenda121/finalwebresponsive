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
      body: richTextW1(context),
    );
  }
}
richTextW1(context) {
  return RichText(
    text: TextSpan(
      text: AppString.youcancreate,
      style: const TextStyle(
          color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
      children: [
        TextSpan(
          text: AppString.multipleprofile1,
          style: const TextStyle(
              color: Colors.blue, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppString.forr,
          style: const TextStyle(
              color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppString.youraccount,
          style: const TextStyle(
              color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
