import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/screens/about_app_screen.dart';
import 'package:get_auth/screens/about_us_screen.dart';
import 'package:get_auth/screens/main_screen.dart';
import 'package:get_auth/screens/log_out_screen.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MainScreen(navCurrentIndex: "4")));
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).indicatorColor,
                      )),
                  const SizedBox(
                    width: 90,
                  ),
                  SizedBox(
                    width: 125,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ກ່ຽວກັບ',
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: -1,
                        ),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 90),
              color: Theme.of(context).buttonColor,
              height: h * 0.1,
              width: w * 0.7,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'ປະຫວັດການເຄື່ອງໄຫວ',
                    style: TextStyle(
                        color: Theme.of(context).indicatorColor,
                        fontSize: 24,
                        letterSpacing: -1),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => MainScreen(
                            navCurrentIndex: '0',
                          )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              color: Theme.of(context).buttonColor,
              height: h * 0.1,
              width: w * 0.7,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'ກ່ຽວກັບແອັບ',
                    style: TextStyle(
                        color: Theme.of(context).indicatorColor,
                        fontSize: 24,
                        letterSpacing: -1),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => const AboutApp()),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              color: Theme.of(context).buttonColor,
              height: h * 0.1,
              width: w * 0.7,
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'ກ່ຽວກັບພວກເຮົາ',
                      style: TextStyle(
                          color: Theme.of(context).indicatorColor,
                          fontSize: 24,
                          letterSpacing: -1),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const AboutUs())),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
