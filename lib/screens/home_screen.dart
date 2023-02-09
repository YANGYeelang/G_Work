import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get_auth/screens/home_detail.dart';
import 'package:get_auth/screens/home_list_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Offset distance = const Offset(0, 10);
  double blur = 10.0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: w,
              height: h * 0.23,
              child: Align(
                alignment: const Alignment(1, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: w * 0.3,
                      height: h * 0.1,
                      child: Column(
                        children: [
                          const Text(
                            'ຍອດທີເຫຼືອທັງໝົດ',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: -0.4,
                              fontFamily: 'Phetsarath',
                            ),
                          ),
                          Container(
                            width: 125,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Theme.of(context).buttonColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: blur,
                                  spreadRadius: 1,
                                  inset: true,
                                  offset: -distance,
                                  color: Theme.of(context).buttonColor,
                                ),
                                const BoxShadow(
                                  blurRadius: 2,
                                  inset: true,
                                  offset: Offset(0, 4),
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(11),
                            //   color: Theme.of(context).buttonColor,
                            // ),
                            child: Center(
                              child: Text(
                                '0 K',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: w * 0.6,
                      height: h * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).buttonColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'ລາຍຮັບ',
                                style: TextStyle(
                                  color: Theme.of(context).shadowColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.4,
                                  fontFamily: 'Phetsarath',
                                ),
                              ),
                              Container(
                                width: 140,
                                height: 43,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: Theme.of(context).dividerColor,
                                ),
                                child: Center(
                                  child: Text(
                                    '500,000 K',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context).accentColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'ລາຍຈ່າຍ',
                                style: TextStyle(
                                  color: Color.fromARGB(240, 202, 106, 101),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.4,
                                  fontFamily: 'Phetsarath',
                                ),
                              ),
                              Container(
                                width: 140,
                                height: 43,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: Theme.of(context).dividerColor,
                                ),
                                child: Center(
                                  child: Text(
                                    '500,000 K',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context).accentColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListMenuScreen(),
                // Container(
                //   decoration: const BoxDecoration(
                //     border: Border(
                //       bottom: BorderSide(
                //         color: Color.fromARGB(255, 116, 182, 194),
                //         width: 2,
                //       ),
                //     ),
                //   ),
                // ),
                Detail()
              ],
            )
          ],
        ),
      ),
    );
  }
}
