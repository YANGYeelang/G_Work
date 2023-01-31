import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/components/data_class.dart';
import 'package:get_auth/screens/about_app_screen.dart';
import 'package:get_auth/screens/about_us_screen.dart';
import 'package:get_auth/screens/main_screen.dart';
import 'package:get_auth/screens/sign_out_screen.dart';
import 'package:provider/provider.dart';

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
                                MainScreen(navCurrentIndex: "4"),
                          ),
                        );
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
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      child: const Text(
                        'ກ່ຽວກັບ',
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: -1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 270,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Theme.of(context).buttonColor,
                      height: h * 0.1,
                      width: w * 0.7,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'ປະຫວັດການເຄື່ອງໄຫວ',
                            style: TextStyle(
                              fontFamily: 'Phetsarath',
                              color: Theme.of(context).indicatorColor,
                              fontSize: 24,
                              letterSpacing: -0.2,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Provider.of<DataClass>(context, listen: false)
                                    .alllist(1);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen(navCurrentIndex: '0'),
                                  ),
                                );
                              },
                          ),
                        ),
                      ),
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
                                fontFamily: 'Phetsarath',
                                color: Theme.of(context).indicatorColor,
                                fontSize: 24,
                                letterSpacing: -0.2),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const AboutApp()),
                          ),
                        ),
                      ),
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
                                  fontFamily: 'Phetsarath',
                                  color: Theme.of(context).indicatorColor,
                                  fontSize: 24,
                                  letterSpacing: -0.2),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(() => const AboutUs())),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
