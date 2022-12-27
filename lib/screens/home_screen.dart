import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_auth/screens/list_menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 142, 230, 231),
            child: SizedBox(
              width: w,
              height: h * 0.23,
              child: Align(
                alignment: Alignment(1, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: w * 0.3,
                      height: h * 0.1,
                      child: Column(
                        children: [
                          const Text(
                            'ຍອດທັງໝົດ',
                            style: TextStyle(fontSize: 16),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              fixedSize: MaterialStateProperty.all(
                                const Size(125, 43),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text(
                              '5,000,000 K',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 142, 230, 231)),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: w * 0.6,
                      height: h * 0.13,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 170, 179, 181),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'ລາຍຮັບ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 141, 229, 110),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  '100,000 K',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(200, 85, 81, 81)),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  fixedSize: MaterialStateProperty.all(
                                    const Size(140, 43),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'ລາຍຈ່າຍ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 219, 72, 52),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  '50,000 K',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(200, 85, 81, 81)),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  fixedSize: MaterialStateProperty.all(
                                    const Size(140, 43),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                ListMenuScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
