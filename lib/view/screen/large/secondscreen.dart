//second screen of the web where the scroll function will land
import 'package:flutter/material.dart';
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
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Infoprofile Is designed for everyone.',
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: const TextSpan(
            text: 'What ',
            style: TextStyle(
                color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'InfoProfile provides',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' you',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
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
    );
  }
}
