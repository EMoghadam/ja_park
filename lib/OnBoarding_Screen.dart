import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import 'Map_Home.dart';

class OnBoarding_Screen extends StatelessWidget {
  static String id = "OnBoarding_id";

  PageDecoration getDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 25, color: Colors.black87, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black45),
        // titlePadding: EdgeInsets.symmetric(horizontal: 10),
        // bodyPadding: EdgeInsets.symmetric(horizontal: 10),
        imagePadding: EdgeInsets.symmetric(vertical: 10),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                title: "tittle",
                body: "descreption",
                image: Lottie.asset("assets/page1.json"),
                decoration: getDecoration()),
            PageViewModel(
                title: "tittle",
                body: "descreption",
                image: Lottie.asset("assets/page2.json"),
                decoration: getDecoration()),
            PageViewModel(
                title: "tittle",
                body: "descreption",
                image: Lottie.asset("assets/page2.json"),
                decoration: getDecoration()),
          ],
          showBackButton: true,
          isTopSafeArea: true,
          isProgressTap: false,
          isBottomSafeArea: true,
          animationDuration: 500,

          next: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          back: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          dotsDecorator: DotsDecorator(
              color: Colors.black26,
              activeColor: Colors.black,
              size: Size(10, 10),
              activeSize: Size(22, 10),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24))),
          done: const Text(
            "اتمام",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          onDone: () {
            Navigator.pushReplacementNamed(context, Map_Home.id);
          },
        ),
      ),
    );
  }
}
