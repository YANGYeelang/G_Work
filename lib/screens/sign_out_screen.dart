import 'package:flutter/material.dart';
import 'package:get_auth/components/themes.dart';
// import 'package:get_auth/screens/main_screen.dart';
import 'package:get_auth/screens/about_screen.dart';
import 'package:get_auth/screens/auth_controller.dart';

// ignore: must_be_immutable
class LogOutScreen extends StatefulWidget {
  String email;
  // int newTheme;
  // Function callBackFunction;
  LogOutScreen({
    super.key,
    required this.email,
    // required this.newTheme,
    // required this.callBackFunction,
  });

  @override
  // ignore: no_logic_in_create_state
  State<LogOutScreen> createState() => _LogOutScreenState(email);
}

class _LogOutScreenState extends State<LogOutScreen> {
  late bool themevalue = true;
  String email;
  _LogOutScreenState(this.email);
  int number = 0;

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
                        // ignore: deprecated_member_use
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
                            padding: EdgeInsets.only(left: w * 0.27),
                            height: h * 0.08,
                            width: w * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'ໂໝດແສງ',
                                  style: TextStyle(
                                    fontFamily: 'Phetsarath',
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
                                      size: 30,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: w * 0.8,
                            height: 1,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const About()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: w * 0.29),
                              height: h * 0.08,
                              width: w * 0.8,
                              // ignore: deprecated_member_use
                              color: Theme.of(context).buttonColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'ກ່ຽວກັບ',
                                      style: TextStyle(
                                        fontFamily: 'Phetsarath',
                                        color: Theme.of(context).indicatorColor,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      // recognizer: TapGestureRecognizer()
                                      //   ..onTap =
                                      //       () => Get.to(() => const About()),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 40,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: w * 0.8,
                            height: 1.2,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              AuthController.instance.logOut();
                            },
                            child: SizedBox(
                              height: h * 0.08,
                              child: const Center(
                                child: Text(
                                  'ອອກຈາກລະບົບ',
                                  style: TextStyle(
                                    fontFamily: 'Phetsarath',
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
                    child: SizedBox(
                      height: 130,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 55,
                            child: Icon(
                              Icons.person,
                              size: 90,
                            ),
                            // backgroundImage:
                            //     AssetImage('assets/images/avatar.png'),
                            // child: Text(email),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                email,
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 45),
                                width: 110,
                                height: 35,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const FireStore()));
                                  },
                                  child: const Text(
                                    'ລົບບັນຊີ',
                                    style: TextStyle(
                                        fontFamily: 'Phetsarath',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
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
