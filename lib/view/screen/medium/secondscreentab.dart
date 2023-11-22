//second screen of the tab for displaying the download buttons of appstore and playstore

import 'package:flutter/material.dart';
import 'package:screen15/view/screen/large/itemscard.dart';
class TabSecondScreen extends StatefulWidget {
  const TabSecondScreen({super.key});

  @override
  State<TabSecondScreen> createState() => _TabSecondScreenState();
}

class _TabSecondScreenState extends State<TabSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          //download icons for the site
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150,
                  child: Image.asset(
                    'images/google_play.png',
                    fit: BoxFit.contain,
                  )),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                  width: 150,
                  child: Image.asset(
                    'images/app_store.png',
                    fit: BoxFit.contain,
                  ))
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          //properties of the app text
          const Text(
            'Infoprofile Is designed for everyone.',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
              text: 'What ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'InfoProfile provides',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' you',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //calling the function which was made earlier to disply properties
          const SiteCard()
        ],
      ),
    );
  }
}
