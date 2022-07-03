import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:yeteamboxd/constants/constant.dart';
import 'package:yeteamboxd/presentation/screens/login.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.kMainColor,
      body: SizedBox(
        height: size.height,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (size.height + MediaQuery.of(context).padding.top) / 2,
              child: Image.asset(
                "assets/images/onBoard.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top:
                  (size.height + MediaQuery.of(context).padding.top) / 2 - 37.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Dots.png",
                    width: size.width * .33,
                  ),
                  const Text(
                    "YeteamBoxd",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: size.height * .07),
                  // ignore: prefer_const_constructors
                  Text(
                    textAlign: TextAlign.center,
                    "\"Track films you've\nwatched. Save those you\nwant to see. Tell your\nfriends what's good.\" ",
                    style: const TextStyle(
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(height: size.height * .07),
                  TextButton(
                    onPressed: () {
                      Grock.toRemove(LoginPage());
                    },
                    child: const Text(
                      "Get Started",
                    ),
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
