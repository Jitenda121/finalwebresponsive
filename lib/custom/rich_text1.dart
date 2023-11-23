import 'package:flutter/material.dart';

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
    text: const TextSpan(
      text: 'What ',
      style: TextStyle(
          color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
      children: [
        TextSpan(
          text: 'InfoProfile provides',
          style: TextStyle(
              color: Colors.blue, fontSize: 38, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' you',
          style: TextStyle(
              color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
