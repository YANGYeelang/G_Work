import 'package:flutter/material.dart';

class ListMenuScreen extends StatefulWidget {
  ListMenuScreen();

  @override
  _ListMenuScreenState createState() => _ListMenuScreenState();
}

class _ListMenuScreenState extends State<ListMenuScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var S = MediaQuery.of(context).size;
    int countItems = 0;

    return Container(
      color: Colors.white.withOpacity(0.5),
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
                      countItems == 0;
                      print(countItems);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ລ່າສຸດ',
                          style: TextStyle(
                              color: countItems == 0
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Color.fromARGB(255, 152, 145, 145),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
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
                      countItems = 1;
                      print(countItems);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ວັນ',
                          style: TextStyle(
                              color: countItems == 1
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Color.fromARGB(255, 152, 145, 145),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: countItems == 1,
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      countItems = 2;
                      print(countItems);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ອາທິດ',
                          style: TextStyle(
                              color: countItems == 2
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Color.fromARGB(255, 152, 145, 145),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: countItems == 2,
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      countItems = 3;
                      print(countItems);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ເດືອນ',
                          style: TextStyle(
                              color: countItems == 3
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Color.fromARGB(255, 152, 145, 145),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: countItems == 3,
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      countItems = 4;
                      print(countItems);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ປີ',
                          style: TextStyle(
                              color: countItems == 4
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Color.fromARGB(255, 152, 145, 145),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: countItems == 4,
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 110, 100, 237),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: S.width / 14),
                  InkWell(
                    onTap: () {
                      countItems = 5;
                      print(countItems);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ທັງໝົດ',
                          style: TextStyle(
                              color: countItems == 5
                                  ? Color.fromARGB(255, 110, 100, 237)
                                  : Color.fromARGB(255, 152, 145, 145),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: countItems == 5,
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color.fromARGB(255, 110, 100, 237),
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
    //);
  }
}
