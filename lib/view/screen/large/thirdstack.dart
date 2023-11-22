//third stack screen for displaying image and content
import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';

class WebStackThird extends StatefulWidget {
  const WebStackThird({super.key});

  @override
  State<WebStackThird> createState() => _WebStackThirdState();
}

class _WebStackThirdState extends State<WebStackThird> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //for defining the base
          height: 500,
          color: AppColor.myColor,
        ),
        //positioning of the card image on the right
        Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
                height: 400,
                child: Image.asset(
                  'images/cards.png',
                  fit: BoxFit.contain,
                ))),
        //positioning of the man thinking on the stack
        Positioned(
            top: 40,
            left: 10,
            child: SizedBox(
                height: 400,
                child: Image.asset(
                  'images/man_thinking.png',
                  fit: BoxFit.contain,
                ))),
        //positioning of the text on the card image
        Positioned(
            top: 10,
            right: 60,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Be ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Creative ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'in your ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'own way by joining ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'or building a ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'community',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Here we produce unusual ideas, reflecting the originality of the GitHub Community SRM. We build a transformative experience for our members in the creative field dealing with UI/UX, VFX/GFX, Content Writing and Photography elements.',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
