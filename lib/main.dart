//please run flutter pub get as flutter clean has been runned before zipping
//the screen is scrollable
//the screen is responsive to all type of screens
//the login and other input and clickable fields are not validated and functionable as told
//media query and wrap function has  been also used in fhe file to make it adaptive and responsive
import 'package:flutter/material.dart';
import 'package:screen15/view/screen/large/chromescreen.dart';
import 'package:screen15/view/screen/medium/tab.dart';
import 'package:screen15/view/screen/small/phone.dart';
import 'package:screen15/view/splash_screen.dart';
import 'package:screen15/view_model/layout.dart';

void main() {
  runApp(const WebResponsive());
}

//the main class
class WebResponsive extends StatefulWidget {
  const WebResponsive({
    super.key,
  });

  @override
  State<WebResponsive> createState() => _WebResponsiveState();
}

class _WebResponsiveState extends State<WebResponsive> {
  @override
  //calling the gif animated screen
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: GifScreen());
  }
}

//new widget screen to combine the nevigation of the gif to the main screen
class NewWiedget extends StatefulWidget {
  const NewWiedget({super.key});

  @override
  State<NewWiedget> createState() => _NewWiedgetState();
}

class _NewWiedgetState extends State<NewWiedget> {
  final ScrollController controller = ScrollController();
  //disposing the controller
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void scrollScreenWise(double screenHeight) {
    controller.animateTo(
      screenHeight,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            //using layout builder for choosing and making the widget adaptive according to the size of the screen
            LayoutAdapter(
              desktop: (context, child) => ChromeScreen(
                  scrollScreen: () =>
                      scrollScreenWise(MediaQuery.of(context).size.height)),
              tablet: (context, child) => const TabScreen(),
              mobile: (context, child) => const PhoneScreen(),
            )
          ],
        ),
      )),
    );
  }
}
