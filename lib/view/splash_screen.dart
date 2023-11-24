//screen for showing the gif animation at the starting of the screen
import 'package:flutter/material.dart';
import 'package:screen15/main.dart';
import 'package:screen15/res/component/app_images.dart';

class GifScreen extends StatefulWidget {
  const GifScreen({super.key});
  @override
  State<GifScreen> createState() => _GifScreenState();
}

class _GifScreenState extends State<GifScreen> {
  @override
  void initState() {
    super.initState();
    _navigationtomainscreen(context);
  }

//defining the seconds of the screen to appear
  _navigationtomainscreen(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 500)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const NewWiedget()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Image.asset(AppImage.info),
      ),
    );
  }
}
