import 'package:flutter/material.dart';

class NotifiScreeen extends StatefulWidget {
  const NotifiScreeen({super.key});

  @override
  State<NotifiScreeen> createState() => _NotifiScreeenState();
}

class _NotifiScreeenState extends State<NotifiScreeen> {
  @override
  List<Map<String, dynamic>> _allList = [
    {
      'id': 1,
      'item': 'ລາຍການ',
      'datetime': '18/1/2023',
      'time': '9: 30',
    },
    {
      'id': 2,
      'item': 'ລາຍການ',
      'datetime': '18/2/2023',
      'time': '9: 30',
    },
    {
      'id': 3,
      'item': 'ລາຍການ',
      'datetime': '18/3/2023',
      'time': '9: 30',
    },
    {
      'id': 4,
      'item': 'ລາຍການ',
      'datetime': '18/4/2023',
      'time': '9: 30',
    },
    {
      'id': 5,
      'item': 'ລາຍການ',
      'datetime': '18/5/2023',
      'time': '9: 30',
    },
    {
      'id': 6,
      'item': 'ລາຍການ',
      'datetime': '18/6/2023',
      'time': '9: 30',
    },
    {
      'id': 7,
      'item': 'ລາຍການ',
      'datetime': '18/7/2023',
      'time': '9: 30',
    }
  ];

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).buttonColor,
          height: h,
          width: w,
          margin: const EdgeInsets.only(top: 40),
          padding: EdgeInsets.only(top: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.notifications,
                    size: 50,
                    // textDirection: ,
                  ),
                  SizedBox(
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
                                  width: 2))),
                      child: ListTile(
                        leading: Column(
                          children: [
                            Text(
                              _allList[index]['datetime'],
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              _allList[index]['time'],
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        title: Row(
                          children: [
                            Text(
                              _allList[index]['item'],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.8,
                              ),
                            ),
                          ],
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
