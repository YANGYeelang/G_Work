import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get_auth/components/data_class.dart';
import 'package:provider/provider.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Offset distance = const Offset(0, 10);
  double blur = 10.0;

  @override
  Widget build(BuildContext context) {
    CollectionReference allItemes =
        FirebaseFirestore.instance.collection('allItemes');
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              spreadRadius: 1,
              inset: true,
              offset: -distance,
              color: Theme.of(context).buttonColor,
            ),
            const BoxShadow(
              blurRadius: 2,
              inset: true,
              offset: Offset(0, 4),
              color: Colors.grey,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.62,
              // child: StreamBuilder(
              //   stream: allItemes.orderBy('name').snapshots(),
              //   builder: (context, snapshot) {
              //     return ListView(
              //       children: snapshot.data!.docs.map((allIteme) {
              //         return Center(
              //           child: ListTile(
              //             leading: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Container(
              //                   child: Text(allIteme['name']),
              //                 )
              //               ],
              //             ),
              //           ),
              //         );
              //       }).toList(),
              //     );
              //   },
              // ),

              child: Consumer<DataClass>(
                builder: (context, dataClass, child) {
                  return ListView.builder(
                    itemCount: dataClass.dataList.length,
                    itemBuilder: (context, index) => Card(
                      key: ValueKey(dataClass.dataList[index]['id']),
                      elevation: 0,
                      margin: const EdgeInsets.symmetric(vertical: 13),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                        child: ListTile(
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Theme.of(context).disabledColor,
                                child: Text(
                                  dataClass.dataList[index]['datetime'],
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Text(
                                dataClass.dataList[index]['time'],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).accentColor),
                              )
                            ],
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  dataClass.dataList[index]['item'],
                                  style: const TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.5,
                                    fontFamily: 'Phetsarath',
                                  ),
                                ),
                              ),
                              Text(
                                '${dataClass.dataList[index]['amount'].toString()} Kip',
                                style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        dataClass.dataList[index]['amount'] < 0
                                            ? Colors.red
                                            : Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
