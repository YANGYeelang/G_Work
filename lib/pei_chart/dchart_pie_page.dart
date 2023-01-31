import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class DChartPiePage extends StatefulWidget {
  const DChartPiePage({super.key});

  @override
  State<DChartPiePage> createState() => _DChartPiePageState();
}

List<Map<String, dynamic>> data = [
  {'id': 1, 'item': 'apple', 'percent': 30, 'amount': '300000'},
  {'id': 2, 'item': 'banana', 'percent': 50, 'amount': '300000'},
  {'id': 3, 'item': 'bird', 'percent': 20, 'amount': '300000'},
];

class _DChartPiePageState extends State<DChartPiePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          border: const Border(
            top:
                BorderSide(color: Color.fromARGB(255, 201, 200, 200), width: 3),
          ),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            height: h * 0.71,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: AspectRatio(
                    aspectRatio: 17 / 9,
                    child: DChartPie(
                      data: data.map((e) {
                        return {'domain': e['item'], 'measure': e['percent']};
                      }).toList(),
                      fillColor: ((pieData, index) {
                        switch (pieData['domain']) {
                          case 'apple':
                            return Colors.red;
                          case 'banana':
                            return Colors.blue;
                          default:
                            return Colors.green;
                        }
                      }),
                      labelColor: Theme.of(context).indicatorColor,
                      labelPosition: PieLabelPosition.outside,
                      labelFontSize: 14,
                      labelLineColor: Colors.purple,
                      labelLineThickness: 1,
                      labelLinelength: 20,
                      labelPadding: 2,
                      showLabelLine: false,
                      strokeWidth: 1,
                      donutWidth: 35,
                      pieLabel: (Map<dynamic, dynamic> pieData, int? index) {
                        return pieData['domain'] +
                            ":\n" +
                            pieData['measure'].toString() +
                            '%';
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.13,
                  width: w,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    itemCount: data.length,
                    itemBuilder: (context, index) => Container(
                      key: ValueKey(data[index]['id']),
                      height: 36,
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              data[index]['item'],
                              style: const TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '${data[index]['percent'].toString()}%',
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 75, 172, 175),
                                  letterSpacing: -0.8),
                            ),
                            Text(
                              '${data[index]['amount'].toString()} kip',
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: w * 0.94,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).accentColor, width: 2),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 124,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).disabledColor,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "ລາຍການທັງໝົດ\nຂອງບັນຊີ",
                                        style: TextStyle(
                                            fontFamily: 'Phetsarath',
                                            fontSize: 16,
                                            letterSpacing: -0.1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  const Text(
                                    "ຈໍານວນລາຍການ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Phetsarath',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "ຄີດເປັນເປີເຊັນ (%)",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Phetsarath',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "ປ່ຽນແປງ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Phetsarath',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).disabledColor,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'ຮັບ',
                                        style: TextStyle(
                                            fontFamily: 'Phetsarath',
                                            fontSize: 16,
                                            letterSpacing: -0.1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 19,
                                  ),
                                  const Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "100%",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "0%",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).disabledColor,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'ຈ່າຍ',
                                        style: TextStyle(
                                            fontFamily: 'Phetsarath',
                                            fontSize: 16,
                                            letterSpacing: -0.1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 19,
                                  ),
                                  const Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "100%",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "0%",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).disabledColor,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'ລວມ',
                                        style: TextStyle(
                                            fontFamily: 'Phetsarath',
                                            fontSize: 16,
                                            letterSpacing: -0.1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 19,
                                  ),
                                  const Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 75, 172, 175)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "100%",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 75, 172, 175)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "0%",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 75, 172, 175)),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
