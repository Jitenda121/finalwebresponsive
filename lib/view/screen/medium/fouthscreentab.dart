//fourth screen of the tab displaying image of man thinking and text

import 'package:flutter/material.dart';

class TabStackFour extends StatefulWidget {
  const TabStackFour({super.key});

  @override
  State<TabStackFour> createState() => _TabStackFourState();
}

class _TabStackFourState extends State<TabStackFour> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //container for setting the base
        Container(
          height: 700,
          color: Colors.white,
        ),
        //positioning of the man thinking
        Positioned(
            right: 200,
            top: 0,
            child: SizedBox(
                height: 400, child: Image.asset('images/man_thinking.png'))),
        //positiong of the cards on the right
        Positioned(
            right: 0,
            top: 180,
            child:
                SizedBox(height: 500, child: Image.asset('images/cards.png'))),

        //positioing of the text on the stack
        Positioned(
          bottom: 0,
          right: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Be ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Creative ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'in your ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'own way by joining ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'or\nbuilding a ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'community',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Here we produce unusual ideas, reflecting the originality of the\nGitHub Community SRM. We build a transformative experience\nfor our members in the creative field dealing with UI/UX, VFX/\nGFX, Content Writing and Photography elements.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ],
    );
  }
}
