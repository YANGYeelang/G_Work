import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class DChartPiePage extends StatefulWidget {
  const DChartPiePage({super.key});

  @override
  State<DChartPiePage> createState() => _DChartPiePageState();
}

final data = [
  {'item': 'apple', 'percent': 30},
  {'item': 'banana', 'percent': 50},
  {'item': 'bird', 'percent': 20},
];

class _DChartPiePageState extends State<DChartPiePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          border: const Border(
            top:
                BorderSide(color: Color.fromARGB(255, 201, 200, 200), width: 3),
          ),
        ),
        child: SizedBox(
          height: h * 0.5,
          width: w,
          child: Column(
            children: [
              AspectRatio(
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
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'banana:',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('apple:', style: TextStyle(fontSize: 17)),
                        SizedBox(
                          height: 8,
                        ),
                        Text('bird:', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '50%',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 142, 230, 231)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '30%',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 142, 230, 231)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '20%',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 142, 230, 231)),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '500.000K',
                          style: TextStyle(fontSize: 17, color: Colors.green),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '300.000K',
                          style: TextStyle(fontSize: 17, color: Colors.red),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '200.000K',
                          style: TextStyle(fontSize: 17, color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    width: w * 0.94,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).accentColor, width: 2)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                          fontSize: 16, letterSpacing: -0.8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "ຈໍານວນລາຍການ",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "ຄີດເປັນເປີເຊັນ (%)",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "ປ່ຽນແປງ",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 6,
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
                                          fontSize: 16, letterSpacing: -0.8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const Text(
                                  "100%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const Text(
                                  "0%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 6,
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
                                          fontSize: 16, letterSpacing: -0.8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const Text(
                                  "100%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const Text(
                                  "0%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 6,
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
                                          fontSize: 16, letterSpacing: -0.8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "3",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 75, 172, 175)),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const Text(
                                  "100%",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 75, 172, 175)),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const Text(
                                  "0%",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 75, 172, 175)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
