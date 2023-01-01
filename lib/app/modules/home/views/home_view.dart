import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/blink_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 40.0,
      fontFamily: 'Teko',
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Welcome 2023'.toUpperCase(),
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {},
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Lottie.asset('assets/json/new_fireworks.json'),
              Lottie.asset('assets/json/season-fireworks.json'),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/mypic.JPG'),
              ),
            ],
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Teko',
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                WavyAnimatedText('HAPPY NEW YEAR'),
                WavyAnimatedText('2023'),
              ],
              isRepeatingAnimation: true,
              onTap: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 30,
            child: BlinkText(
              text: "From: Ravindra S. Patil",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Made it with flutter ❤'.toUpperCase(),
                  textStyle:
                      TextStyle(color: Colors.blue.shade200, fontSize: 15),
                  cursor: '',
                  speed: const Duration(milliseconds: 50),
                ),
              ],
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
