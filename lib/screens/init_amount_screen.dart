import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_auth/components/data_class.dart';
import 'package:get_auth/screens/main_screen.dart';
import 'package:provider/provider.dart';

class InitAmount extends StatefulWidget {
  const InitAmount({super.key});

  @override
  State<InitAmount> createState() => _InitAmountState();
}

class _InitAmountState extends State<InitAmount> {
  final textConttroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    CollectionReference allItemes =
        FirebaseFirestore.instance.collection('allItemes');

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              SizedBox(
                height: h * 0.8,
                width: w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 80),
                      height: 110,
                      width: 110,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Logo.png'),
                        ),
                      ),
                    ),
                    const Text(
                      'ກາລຸນາປ້ອນຊື່ ແລະ ຍອດເລີມຕົ້ນຂອງບັນຊີ',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'Phetsarath',
                        letterSpacing: -0.2,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 7),
                          child: Text('ຊື່ບັນຊີ:',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Phetsarath',
                              )),
                        ),
                        Container(
                          width: w * 0.8,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(
                                  blurStyle: BlurStyle.inner,
                                  blurRadius: 30,
                                  spreadRadius: 0.5,
                                  offset: Offset(0, -3),
                                  color: Color.fromARGB(255, 215, 159, 159),
                                )
                              ]),
                          child: TextField(
                            style: const TextStyle(
                                fontSize: 18, letterSpacing: -0.2),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 254, 252, 252),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 254, 252, 252),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 7),
                          child: Text(
                            'ຍອດເລີ່ມຕົ້ນ:',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Phetsarath',
                            ),
                          ),
                        ),
                        Container(
                          width: w * 0.8,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(
                                  blurStyle: BlurStyle.inner,
                                  blurRadius: 30,
                                  spreadRadius: 0.5,
                                  offset: Offset(0, -3),
                                  color: Color.fromARGB(255, 215, 159, 159),
                                )
                              ]),
                          child: TextField(
                            controller: textConttroller,
                            style: const TextStyle(
                                fontSize: 18, letterSpacing: -0.2),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 254, 252, 252),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 254, 252, 252),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      height: 64,
                      child: ElevatedButton(
                        onPressed: () {
                          // allItemes.add({'amount': textConttroller.text});
                          // Provider.of<DataClass>(context, listen: false)
                          //     .infoInput();
                          // Provider.of<DataClass>(context, listen: false)
                          //     .infoTime();
                          Provider.of<DataClass>(context, listen: false)
                              .alllist(1);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MainScreen(navCurrentIndex: '0'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).shadowColor),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: Text(
                          'ດໍາເນີນການຕໍ່',
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Phetsarath',
                              letterSpacing: -0.8,
                              color: Theme.of(context).highlightColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
