//bottom login card for phone and tab which is also called in the tab page

import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_string.dart';
import 'package:screen15/res/component/app_string_last_container.dart';

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
        // elevation: 2,
        //shadowColor: Colors.white,
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
                //"Try Infoprofile for free",
                AppStringLastContainer.tryinfo,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColor.myColor1),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Wrap(
                  children: [
                    const Icon(Icons.check),
                    Text(
                        //"   Multiple profiles"
                        AppStringLastContainer.multipleprofile)
                  ],
                ),
              ),
              SizedBox(
                child: Wrap(
                  children: [
                    const Icon(Icons.check),
                    Text(
                        // "  Creative"
                        AppStringLastContainer.creative)
                  ],
                ),
              ),
              SizedBox(
                child: Wrap(
                  children: [
                    const Icon(Icons.check),
                    Text(
                        // "  Build Connections"
                        AppStringLastContainer.buildconnection)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //using of wrap function to automatically occupy the space
              Wrap(
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: Center(
                      child: Text(
                        AppString.login,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColor.myColor1,
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
                        color: AppColor.myColor1,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      AppString.signup,
                      style: const TextStyle(
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
