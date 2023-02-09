import 'package:flutter/material.dart';
import 'package:get_auth/components/data_class.dart';
import 'package:provider/provider.dart';

class ListMenuScreen extends StatefulWidget {
  const ListMenuScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListMenuScreenState createState() => _ListMenuScreenState();
}

class _ListMenuScreenState extends State<ListMenuScreen> {
  int countItems = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      color: Theme.of(context).dividerColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 13, bottom: 13),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false).alllist(1);
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
                                ? Theme.of(context).canvasColor
                                : Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Phetsarath',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 0,
                          child: Container(
                            height: 2,
                            width: w * 0.08,
                            color: Theme.of(context).canvasColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false).alllist(2);
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
                                ? Theme.of(context).canvasColor
                                : Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Phetsarath',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 1,
                          child: Container(
                            height: 2,
                            width: w * 0.044,
                            color: Theme.of(context).canvasColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false).alllist(3);
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
                                ? Theme.of(context).canvasColor
                                : Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Phetsarath',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 2,
                          child: Container(
                            height: 2,
                            width: w * 0.09,
                            color: Theme.of(context).canvasColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false).alllist(4);
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
                                ? Theme.of(context).canvasColor
                                : Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Phetsarath',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 3,
                          child: Container(
                            height: 2,
                            width: w * 0.08,
                            color: Theme.of(context).canvasColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false).alllist(5);
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
                                ? Theme.of(context).canvasColor
                                : Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Phetsarath',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 4,
                          child: Container(
                            height: 2,
                            width: w * 0.03,
                            color: Theme.of(context).canvasColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false).alllist(0);
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
                                ? Theme.of(context).canvasColor
                                : Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Phetsarath',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Visibility(
                          visible: countItems == 5,
                          child: Container(
                            height: 2,
                            width: w * 0.10,
                            color: Theme.of(context).canvasColor,
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
