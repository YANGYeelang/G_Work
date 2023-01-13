import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  List<Map<String, dynamic>> _allList = [
    {
      'id': 1,
      'item': 'ລາຍການ',
      'datetime': '18/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການ',
      'datetime': '18/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການ',
      'datetime': '18/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການ',
      'datetime': '18/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການ',
      'datetime': '18/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການ',
      'datetime': '18/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການ',
      'datetime': '18/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
  ];

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).buttonColor,
        child: Column(
          children: [
            SizedBox(
              height: h * 0.62,
              child: ListView.builder(
                itemCount: _allList.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_allList[index]['id']),
                  // color: const Color.fromARGB(255, 239, 239, 243),
                  elevation: 0,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ListTile(
                    leading: Column(
                      children: [
                        Text(
                          _allList[index]['datetime'],
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                        SizedBox(
                          width: w * 0.32,
                        ),
                        Text(
                          '${_allList[index]['amount'].toString()} Kip',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
