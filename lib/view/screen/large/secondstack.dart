//second stack screen of the web below the second screen to show about content
import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';

class WebSecondStack extends StatefulWidget {
  const WebSecondStack({super.key});

  @override
  State<WebSecondStack> createState() => _WebSecondStackState();
}

class _WebSecondStackState extends State<WebSecondStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //containe for defining the base
        Container(
          height: 650,
          color:AppColor.myColor,
        ),
        //posiotioning of the side bubble image
        Positioned(
            top: 30,
            child: SizedBox(
                height: 600, child: Image.asset('images/sidebuble.png'))),
        //positioning of the text on the stack
        Positioned(
            top: 100,
            left: 100,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'You can create ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Multiple profiles ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'for ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'your account',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "A domain that helps youdevelop your skills through building multiple portals tosolve problems . All you need is a laptop and an attitude to learn and progress. We primarily deal with Web Dev, App Dev and Blockchain elements.",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
        //positioning of the dancing man
        Positioned(
            right: 0,
            top: 40,
            child: SizedBox(
                height: 400,
                child: Image.asset(
                  'images/dancing_man.png',
                  fit: BoxFit.contain,
                )))
      ],
    );
  }
}
