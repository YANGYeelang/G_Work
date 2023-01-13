import 'package:flutter/material.dart';
import 'package:get_auth/components/themes.dart';

class ListMenuScreen extends StatefulWidget {
  ListMenuScreen();

  @override
  _ListMenuScreenState createState() => _ListMenuScreenState();
}

class _ListMenuScreenState extends State<ListMenuScreen> {
  int countItems = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var S = MediaQuery.of(context).size;

    return Container(
      color: Theme.of(context).highlightColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 13, bottom: 13),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: S.width / 17),
                  InkWell(
                    onTap: () {
                      setState(() {
                        countItems = 0;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ລ່າສຸດ',
                          style: TextStyle(
                              color: countItems == 0
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 0,
                          child: Container(
                            height: 2,
                            width: w * 0.09,
                            color: Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      setState(() {
                        countItems = 1;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ວັນ',
                          style: TextStyle(
                              color: countItems == 1
                                  ? const Color.fromARGB(255, 110, 100, 237)
                                  : Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 1,
                          child: Container(
                            height: 2,
                            width: w * 0.05,
                            color: const Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      setState(() {
                        countItems = 2;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ອາທິດ',
                          style: TextStyle(
                              color: countItems == 2
                                  ? const Color.fromARGB(255, 110, 100, 237)
                                  : Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 2,
                          child: Container(
                            height: 2,
                            width: w * 0.1,
                            color: const Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      setState(() {
                        countItems = 3;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ເດືອນ',
                          style: TextStyle(
                              color: countItems == 3
                                  ? const Color.fromARGB(255, 110, 100, 237)
                                  : Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 3,
                          child: Container(
                            height: 2,
                            width: w * 0.09,
                            color: const Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      setState(() {
                        countItems = 4;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ປີ',
                          style: TextStyle(
                              color: countItems == 4
                                  ? const Color.fromARGB(255, 110, 100, 237)
                                  : Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 4,
                          child: Container(
                            height: 2,
                            width: w * 0.03,
                            color: const Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      setState(() {
                        countItems = 5;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ທັງໝົດ',
                          style: TextStyle(
                              color: countItems == 5
                                  ? const Color.fromARGB(255, 110, 100, 237)
                                  : Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 5,
                          child: Container(
                            height: 2,
                            width: w * 0.12,
                            color: const Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
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
