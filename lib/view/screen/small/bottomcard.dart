//bottom login card for phone and tab which is also called in the tab page

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';

class BottomLoginCard extends StatefulWidget {
  const BottomLoginCard({super.key});

  @override
  State<BottomLoginCard> createState() => _BottomLoginCardState();
}

class _BottomLoginCardState extends State<BottomLoginCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      //card for defing the shape and shape
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //column for displaying the text
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Try Infoprofile for free",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColor.myColor1),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Wrap(
                  children: [Icon(Icons.check), Text("   Multiple profiles")],
                ),
              ),
              const SizedBox(
                child: Wrap(
                  children: [Icon(Icons.check), Text("  Creative")],
                ),
              ),
              const SizedBox(
                child: Wrap(
                  children: [Icon(Icons.check), Text("  Build Connections")],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //using of wrap function to automatically occupy the space
              Wrap(
                children: [
                  const SizedBox(
                    height: 50,
                    width: 80,
                    child: Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
