import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class NotifiScreen extends StatefulWidget {
  const NotifiScreen({super.key});

  @override
  State<NotifiScreen> createState() => _NotifiScreenState();
}

class _NotifiScreenState extends State<NotifiScreen> {
  final List<Map<String, dynamic>> _allList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
    {
      'id': 2,
      'item': 'ຄ່າຮຽນ',
      'datetime': '22/1/2023',
      'time': '6: 30 PM',
      'amount': -150000
    },
    {
      'id': 3,
      'item': 'ເງີນເດືອນ',
      'datetime': '5/1/2023',
      'time': '10: 40 AM',
      'amount': 200000
    },
    {
      'id': 4,
      'item': 'ຄ່າທີພັກ',
      'datetime': '20/11/2022',
      'time': '9: 50 AM',
      'amount': -250000
    },
    {
      'id': 5,
      'item': 'ຄ່າເລີ່ມຕົ້ນ',
      'datetime': '28/10/2022',
      'time': '7: 44 AM',
      'amount': 300000
    },
  ];

  late int notify = _allList.length;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // ignore: deprecated_member_use
          color: Theme.of(context).buttonColor,
          height: h,
          width: w,
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Badge(
                    badgeContent: Text(
                      notify.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.notifications,
                      size: 50,
                      // textDirection: ,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: w * 0.9,
                height: 2,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 116, 182, 194),
                    borderRadius: BorderRadius.circular(60)),
              ),
              SizedBox(
                height: h * 0.74,
                width: w * 0.9,
                child: ListView.builder(
                  itemCount: _allList.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(_allList[index]['id']),
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 116, 182, 194),
                            width: 2,
                          ),
                        ),
                      ),
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _allList[index]['datetime'],
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              _allList[index]['time'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        title: Text(
                          _allList[index]['item'],
                          style: const TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
