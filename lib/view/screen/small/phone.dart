//main class of the phone screen where all the dats is called and made
import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_string.dart';
import 'package:screen15/res/component/app_string_tab.dart';
import 'package:screen15/view/screen/large/itemscard.dart';
import 'package:screen15/view/screen/small/bottomstack.dart';
import 'package:screen15/view/screen/small/logincard.dart';
import 'package:screen15/res/component/app_images_mobile.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});
  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.myColor,
      child: Stack(
        children: [
          Image.asset(AppImageMobile.toprectangle),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: Image.asset(AppImageMobile.rectangleblue),
          ),
          Column(
            children: [
              Center(child: Image.asset(AppImageMobile.info)),
              Text(
                //"Meet Your Best",
                AppStringTab.meet,
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                AppStringTab.connection,
                style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 2, 136, 246),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                // "Build fast, easy & lifelong professional connections.",
                AppStringTab.buildfast,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),

              //calling the login card class which was made
              const LoginCard(),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * .070,
                        width: MediaQuery.of(context).size.height * .25,
                        child: Image.asset(AppImageMobile.appleplaystore)),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * .070,
                        width: MediaQuery.of(context).size.height * .25,
                        child: Image.asset(AppImageMobile.googleplaystore))
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                // 'Infoprofile Is designed for everyone.',
                AppString.infoprofileisdegined,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: AppString.what,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          //'InfoProfile provides',
                          AppString.infoprofile,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          // ' you',
                          AppString.you,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              //calling the site card which was made in the chrome sectioin
              const SiteCard(),
              const SizedBox(
                height: 50,
              ),
              Image.asset(AppImageMobile.worldimage),
              const SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                  text:
                      //'You can create\n',
                      AppString.youcancreate1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          // 'Multiple profiles ',
                          AppString.multipleprofile1,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          // 'for\n',
                          AppString.fornn,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          //'your account',
                          AppString.youraccount,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                // "A domain that helps you\ndevelop your skills through\nbuilding multiple portals to\nsolve problems . All you need is\na laptop and an attitude\nto learn and progress. We\nprimarily deal with Web Dev,\nApp Dev and Blockchain\nelements.",
                AppString.adomain3,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 350,
                  height: 350,
                  child: Image.asset(AppImageMobile.manthinking)),
              RichText(
                text: TextSpan(
                  text:
                      //'Be ',
                      AppString.be,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          // 'Creative ',
                          AppString.creative,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          //'in your\n',
                          AppString.inyourn,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          //'own way by joining\n',
                          AppString.ouwnway1,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          //'or building a \n',
                          AppString.orbuilding1,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          // 'community',
                          AppString.community,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                // 'Here we produce unusual ideas,\nreflecting the originality of the\nGitHub Community SRM. We\nbuild a transformative\nexperience for our members in\nthe creative field dealing with\nUI/UX, VFX/GFX, Content Writing\nand Photography elements.',
                AppString.hereweproducen,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 5, 106, 189),
                    height: 450,
                  ),
                  SizedBox(
                      height: 150, child: Image.asset(AppImageMobile.dots)),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                        height: 150, child: Image.asset(AppImageMobile.dots)),
                  ),
                  Column(
                    children: [
                      Image.asset(AppImageMobile.download),
                      Text(
                        // "Download our App from",
                        AppString.dowload,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 170,
                                child:
                                    Image.asset(AppImageMobile.appleplaystore)),
                            SizedBox(
                                height: 40,
                                width: 170,
                                child:
                                    Image.asset(AppImageMobile.googleplaystore))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  )
                ],
              ),
              Image.asset(AppImageMobile.world),

              Text(
                //
                // "Make friends by\nBuilding connections\nthat are relevant to\nyou.",
                AppString.makefriendphone,

                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                //"The best domain for a real-time\nexperience of the corporate\nworld . Improving your\ncommunication and time\nmanagement skills is the main\nprospect. PR, Sponsorship,\nSocial media handling ,\nTreasury, and Marketing are\nelements of this\ndomain."
                AppString.thebestdomainphone,
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),

              // MobileCard()
              bottomStack1(context)
            ],
          )
        ],
      ),
    );
  }
}
