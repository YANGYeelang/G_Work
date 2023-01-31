// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get_auth/components/dialog_calen.dart';
import 'package:get_auth/pei_chart/dchart_pie_page.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  final items = [
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: const TextStyle(fontSize: 20, letterSpacing: -0.7),
          ),
        );
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'ຍອດລວມ:',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: 'Phetsarath',
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).buttonColor,
                      ),
                      child: const Center(
                          child: Text(
                        '500,000 K',
                        style: TextStyle(
                            color: Color.fromARGB(255, 142, 230, 231)),
                      )),
                    )
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                    onPressed: () => DialogCalendar(context),
                    child: const Text('Calendar'))

                // Container(
                //   width: 90,
                //   height: 40,
                //   decoration: BoxDecoration(
                //       color: Theme.of(context).buttonColor,
                //       borderRadius: BorderRadius.circular(10)),
                //   child: Center(
                //     child: DropdownButton<String>(
                //       borderRadius: BorderRadius.circular(20),
                //       dropdownColor: Theme.of(context).buttonColor,
                //       value: value,
                //       items: items.map(buildMenuItem).toList(),
                //       onChanged: (value) => setState(() {
                //         this.value = value;
                //       }),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          const DChartPiePage(),
        ],
      ),
    );
  }
}
