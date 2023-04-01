import 'package:flutter/material.dart';
import 'package:food_list/screens/homescreen.dart';
import 'package:get/get.dart';
import 'package:delayed_display/delayed_display.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("build/assets/image/bgimg.png"),
              fit: BoxFit.fitHeight,
              opacity: 160),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Align(
              alignment: const Alignment(0.3, 0),
              child: DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: Image.asset(
                  "build/assets/image/meal1.png",
                  height: 170,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: const Alignment(-0.8, 0),
              child: DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: Image.asset(
                  "build/assets/image/meal2.png",
                  height: 170,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: const Alignment(0.8, 0),
              child: DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: Image.asset(
                  "build/assets/image/meal3.png",
                  height: 170,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(() => const Homepage()),
              child: Container(
                margin: const EdgeInsets.only(top: 120),
                height: 65,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(24)),
                alignment: Alignment.center,
                child: const Text(
                  "Let's Explore Food",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
