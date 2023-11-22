//screen for showing the gif animation at the starting of the screen
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:screen15/main.dart';

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
    await Future.delayed(const Duration(milliseconds: 3000)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const NewWiedget()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('images/info_B&W.png'),
      ),
    );
  }
}
