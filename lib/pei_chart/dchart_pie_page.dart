import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class DChartPiePage extends StatefulWidget {
  const DChartPiePage({super.key});

  @override
  State<DChartPiePage> createState() => _DChartPiePageState();
}

List<Map<String, dynamic>> data = [
  {'id': 1, 'item': 'apple', 'percent': 30, 'amount': '300000'},
  {'id': 2, 'item': 'banana', 'percent': 25, 'amount': '300000'},
  {'id': 3, 'item': 'bird', 'percent': 20, 'amount': '300000'},
  {'id': 4, 'item': 'cat', 'percent': 15, 'amount': '300000'},
  {'id': 5, 'item': 'dog', 'percent': 10, 'amount': '300000'},
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
            height: h * 0.72,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: AspectRatio(
                    aspectRatio: 17 / 9,
                    child: DChartPie(
                      data: data.map((e) {
                        return {'domain': e['item'], 'measure': e['percent']};
                      }).toList(),
                      fillColor: ((pieData, index) {
                        switch (pieData['domain']) {
                          case 'apple':
                            return const Color.fromARGB(255, 230, 105, 96);
                          case 'banana':
                            return const Color.fromARGB(255, 97, 224, 205);
                          case 'bird':
                            return const Color.fromARGB(255, 97, 224, 114);
                          case 'cat':
                            return const Color.fromARGB(255, 224, 97, 190);
                          default:
                            return const Color.fromARGB(255, 241, 215, 98);
                        }
                      }),
                      labelColor: Theme.of(context).indicatorColor,
                      labelPosition: PieLabelPosition.inside,
                      labelFontSize: 14,
                      labelLineColor: Colors.purple,
                      labelLineThickness: 1,
                      labelLinelength: 20,
                      labelPadding: 2,
                      showLabelLine: false,
                      strokeWidth: 1,
                      donutWidth: 35,
                      pieLabel: (Map<dynamic, dynamic> pieData, int? index) {
                        return
                            // pieData['domain'] +
                            //     ":\n" +
                            '${pieData['measure']}%';
                      },
                    ),
                  ),
                ),
                SizedBox(
                    height: h * 0.13,
                    width: w,
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: h * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "ຄ່າເລີ່ມຕົ້ນ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Phetsarath',
                                  ),
                                ),
                                Text(
                                  "ຄ່າທີພັກ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Phetsarath',
                                  ),
                                ),
                                Text(
                                  "ເງີນເດືອນ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Phetsarath',
                                  ),
                                ),
                                Text(
                                  "ຄ່າຮຽນ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Phetsarath',
                                  ),
                                ),
                                Text(
                                  "ເຄ່າດີນທາງ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Phetsarath',
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "30%",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "25%",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  "20%",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "15%",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  "10%",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "300.000 k",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                ),
                                Text(
                                  "- 250.000 k",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                ),
                                Text(
                                  "200.000 k",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                ),
                                Text(
                                  "- 150.000 k",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                ),
                                Text(
                                  "- 100.000 k",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                    // ListView.builder(
                    //   padding: EdgeInsets.only(top: 0),
                    //   itemCount: data.length,
                    //   itemBuilder: (context, index) => Container(
                    //     key: ValueKey(data[index]['id']),
                    //     height: 36,
                    //     child: ListTile(
                    //       title: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //         children: [
                    //           Text(
                    //             data[index]['item'],
                    //             style: const TextStyle(
                    //               fontSize: 17,
                    //             ),
                    //           ),
                    //           Text(
                    //             '${data[index]['percent'].toString()}%',
                    //             style: const TextStyle(
                    //                 fontSize: 17,
                    //                 fontWeight: FontWeight.w300,
                    //                 color: Color.fromARGB(255, 75, 172, 175),
                    //                 letterSpacing: -0.8),
                    //           ),
                    //           Text(
                    //             '${data[index]['amount'].toString()} kip',
                    //             style: const TextStyle(
                    //                 fontSize: 17,
                    //                 fontWeight: FontWeight.w300,
                    //                 color: Colors.green),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
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
                                  color: Theme.of(context).dividerColor,
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
                                  fontSize: 19,
                                  fontFamily: 'Phetsarath',
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                "ຄີດເປັນເປີເຊັນ (%)",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: 'Phetsarath',
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                "ປ່ຽນແປງ",
                                style: TextStyle(
                                  fontSize: 19,
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
                                  color: Theme.of(context).dividerColor,
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
                                height: 22,
                              ),
                              const Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              const Text(
                                "50%",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              const Text(
                                "0%",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              ),
                              const SizedBox(
                                height: 19,
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
                                  color: Theme.of(context).dividerColor,
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
                                height: 22,
                              ),
                              const Text(
                                "3",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              const Text(
                                "50%",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              const Text(
                                "11.1%",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red),
                              ),
                              const SizedBox(
                                height: 19,
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
                                  color: Theme.of(context).dividerColor,
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
                                height: 22,
                              ),
                              const Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 75, 172, 175)),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              const Text(
                                "100%",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 75, 172, 175)),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              const Text(
                                "11.1%",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 75, 172, 175)),
                              ),
                              const SizedBox(
                                height: 19,
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
          ),
        ),
      ),
    );
  }
}
