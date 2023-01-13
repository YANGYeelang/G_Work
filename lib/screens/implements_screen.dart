import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/screens/about_screen.dart';
import 'package:get_auth/screens/auth_controller.dart';
import 'package:get_auth/screens/imp_detail_screen.dart';

class ImpScreen extends StatefulWidget {
  ImpScreen({
    super.key,
  });

  @override
  State<ImpScreen> createState() => _ImpScreenState();
}

class _ImpScreenState extends State<ImpScreen> {
  late int _detailItem = 0;
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
                    top: 20,
                    child: _detailItem == 0
                        ? const MImpDetail()
                        : const PImpDetail(),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: w,
                      height: 130,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: w * 0.07,
                            child: SizedBox(
                              width: w * 0.45,
                              height: h * 0.1,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  backgroundColor: _detailItem == 0
                                      ? MaterialStatePropertyAll(
                                          Theme.of(context).focusColor,
                                        )
                                      : MaterialStatePropertyAll(
                                          Theme.of(context).buttonColor,
                                        ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _detailItem = 0;
                                  });
                                },
                                child: Text(
                                  'ລາຍຮັບ',
                                  style: TextStyle(
                                      color: _detailItem == 0
                                          ? Theme.of(context).indicatorColor
                                          : Colors.green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: w * 0.47,
                            child: SizedBox(
                              width: w * 0.45,
                              height: h * 0.1,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  backgroundColor: _detailItem == 1
                                      ? MaterialStatePropertyAll(
                                          Theme.of(context).focusColor,
                                        )
                                      : MaterialStatePropertyAll(
                                          Theme.of(context).buttonColor,
                                        ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _detailItem = 1;
                                  });
                                },
                                child: Text(
                                  'ລາຍຈ່າຍ',
                                  style: TextStyle(
                                      color: _detailItem == 1
                                          ? Theme.of(context).indicatorColor
                                          : const Color.fromARGB(
                                              255, 233, 39, 39),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
