//screen six of the tab displaying text about the app

import 'package:flutter/material.dart';

class TabScreenSix extends StatefulWidget {
  const TabScreenSix({super.key});

  @override
  State<TabScreenSix> createState() => _TabScreenSixState();
}

class _TabScreenSixState extends State<TabScreenSix> {
  @override
  Widget build(BuildContext context) {
    //for displaying the image and the etxt
    return Column(
      children: [
        Image.asset('images/world.png'),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Make friends by Building connections\nthat are relevant to you.",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The best domain for a real-time experience of the corporate\nworld . Improving your communication and time management\nskills is the main prospect. PR, Sponsorship, Social media\nhandling , Treasury, and Marketing are elements of this domain.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
