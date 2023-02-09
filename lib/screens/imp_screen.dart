import 'package:flutter/material.dart';
import 'package:get_auth/screens/imp_detail_screen.dart';

class ImpScreen extends StatefulWidget {
  const ImpScreen({
    super.key,
  });

  @override
  State<ImpScreen> createState() => _ImpScreenState();
}

class _ImpScreenState extends State<ImpScreen> {
  late int _detailItem = 0;
  Offset distance = const Offset(0, 10);
  double blur = 10.0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                      child: SizedBox(
                        width: w,
                        height: 130,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: w * 0.05,
                              child: SizedBox(
                                width: 190,
                                height: 85,
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
                                  child: const Center(
                                    child: Text(
                                      'ລາຍຮັບ',
                                      style: TextStyle(
                                          fontFamily: 'Phetsarath',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 28),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: w * 0.49,
                              child: SizedBox(
                                width: 190,
                                height: 85,
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
                                            Theme.of(context).focusColor)
                                        : MaterialStatePropertyAll(
                                            Theme.of(context).buttonColor,
                                          ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _detailItem = 1;
                                    });
                                  },
                                  child: const Text(
                                    'ລາຍຈ່າຍ',
                                    style: TextStyle(
                                        fontFamily: 'Phetsarath',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 28),
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
      ),
    );
  }
}
