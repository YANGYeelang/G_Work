import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_auth/components/data_class.dart';
import 'package:provider/provider.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    CollectionReference allItemes =
        FirebaseFirestore.instance.collection('allItemes');

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).buttonColor,
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
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Theme.of(context).disabledColor,
                              child: Text(
                                dataClass.dataList[index]['datetime'],
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Text(
                              dataClass.dataList[index]['time'],
                              style: TextStyle(
                                  fontSize: 22,
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
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.8,
                                  fontFamily: 'Phetsarath',
                                ),
                              ),
                            ),
                            Text(
                              '${dataClass.dataList[index]['amount'].toString()} Kip',
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
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
