import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/components/themes.dart';
import 'package:get_auth/screens/main_screen.dart';
import 'package:get_auth/screens/about_screen.dart';
import 'package:get_auth/screens/auth_controller.dart';
import 'package:provider/provider.dart';
import 'package:get_auth/components/mode_color.dart';

class LogOutScreen extends StatefulWidget {
  String email;
  // int newTheme;
  // Function callBackFunction;
  LogOutScreen(
      {super.key,
      required this.email,
      // required this.newTheme,
      // required this.callBackFunction,
      });

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  late bool themevalue = true;
  void checktheme(bool changed) {
    themevalue = changed;

    print(themevalue);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              width: w,
              height: h * 0.8,
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    child: Container(
                      width: w,
                      height: h * 0.8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            width: w * 0.8,
                            height: 1.2,
                            color: Colors.black,
                          ),
                          Container(
                            height: h * 0.08,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'ໂໝດແສງ',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      currentTheme.toggleTheme();

                                      // bottom theme
                                      checktheme(themevalue = !themevalue);
                                    },
                                    icon: Icon(
                                      Icons.brightness_4_rounded,
                                      color: Theme.of(context).accentColor,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: w * 0.8,
                            height: 1,
                            color: Colors.black,
                          ),
                          Container(
                            height: h * 0.08,
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'ກ່ຽວກັບ',
                                  style: TextStyle(
                                    color: Theme.of(context).indicatorColor,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.to(() => const About()),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: w * 0.8,
                            height: 1.2,
                            color: Colors.black,
                          ),
                          GestureDetector(
                            onTap: () {
                              AuthController.instance.logOut();
                            },
                            child: Container(
                              height: h * 0.09,
                              child: const Center(
                                child: Text(
                                  'ອອກຈາກລະບົບ',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: w * 0.8,
                            height: 1,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                          width: w * 0.3,
                          height: h * 0.15,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 211, 201),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/welcome.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: w * 0.6,
                              height: h * 0.07,
                              child: Text(
                                widget.email,
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.3,
                              height: h * 0.04,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'ລົບບັນຊີ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
