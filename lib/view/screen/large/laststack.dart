//last stack screen of the web to display the login and about the compoany details
import 'package:flutter/material.dart';
import 'package:screen15/custom/custom_paint_container.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string_last_container.dart';

class WebLast extends StatefulWidget {
  const WebLast({super.key});
  @override
  State<WebLast> createState() => _WebLastState();
}

class _WebLastState extends State<WebLast> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //stack for placing the content above one another
      children: [
        //container for definig the base
        Container(
          height: 400,
          color: AppColor.myColor,
        ),
        //positionig of the rectangle as the backgroung
        // Positioned(
        //     bottom: 0,
        //     child: SizedBox(
        //         width: MediaQuery.of(context).size.width * 1,
        //         child: Image.asset(AppImage.lastrectangle))),
        Positioned(
            //top: 0,
            child: ClipPath(
          clipper: LeftSlopedClipper(),
          child: Container(
            decoration: BoxDecoration(color: AppColor.myColor1
                //Color.fromARGB(255, 13, 96, 212),
                ),
            width: MediaQuery.of(context).size.width * 1,
            height: 450,
          ),
        )),
        //positioning of the sized box above the rectangle containing login content
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 2,
              shadowColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 0, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStringLastContainer.tryinfo,
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.check),
                            Text(
                              AppStringLastContainer.multipleprofile,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const Icon(Icons.check),
                            Text(
                              AppStringLastContainer.creative,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const Icon(Icons.check),
                            Text(
                              AppStringLastContainer.buildconnection,
                              style: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      AppStringLastContainer.signin,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          AppStringLastContainer.signup,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //positioning of the text on the blue rectangle
        Positioned(
          bottom: 60,
          left: 0,
          right: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImage.bw),
                  Text(
                    AppStringLastContainer.notanormal,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppStringLastContainer.services,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(AppImage.logo1)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStringLastContainer.features,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.viewfeeds,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.makeconnection,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.creatingcompanies,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.mobileapp,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStringLastContainer.links,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.privacy,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.termscondition,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStringLastContainer.company,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.contactus,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.aboutus,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStringLastContainer.helpandsupport,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStringLastContainer.gettingstartewd,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: Container(
              height: 1,
              color: Colors.white,
            )),
        Positioned(
          bottom: 30,
          left: 50,
          right: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStringLastContainer.copyright,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 95,
              ),
              Text(
                AppStringLastContainer.allrightreserved,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
