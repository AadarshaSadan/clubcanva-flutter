import 'dart:async';
import 'dart:ui';

import 'package:club_canva_proj/screens/blurred_background/background.dart';
import 'package:club_canva_proj/screens/splashscreen/controller/splash_screen_controller.dart';
import 'package:club_canva_proj/strings.dart';
import 'package:club_canva_proj/widgets/reusable_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(Splashscreencontroller());
  @override
  void initState() {
    super.initState();
    // Delay before navigating to the next screen

    controller.onInit();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF12C2014), // brown
                    Color(0xff191411),
                    Color(0xFF5D4037),
                    // black
                  ],
                ),
              ),
            ),

            // 2️⃣ Optional blurred colored circles
            Positioned(
              top: -100,
              left: -50,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                  child: Container(color: Colors.transparent),
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              right: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                  child: Container(color: Colors.transparent),
                ),
              ),
            ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 245, 153, 108),
                    radius: 75,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Image.asset(
                        'assets/images/splashscreen.png',

                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text_widget(
                    text: Strings.appName,
                    fontWeight: FontWeight.w700,
                    fontsize: 36,
                    color: Colors.white,
                    textalign: TextAlign.center,
                  ),
                  Text_widget(
                    text: Strings.SplashScreensubtitle,
                    fontWeight: FontWeight.w600,
                    fontsize: 14,
                    color: Colors.grey,
                    textalign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
