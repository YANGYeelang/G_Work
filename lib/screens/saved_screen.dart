import 'package:flutter/material.dart';
import 'package:get_auth/screens/main_screen.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Positioned(
            child: Container(
              height: h * 0.6,
              width: w * 0.9,
              // color: Colors.red,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: h * 0.55,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).buttonColor,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: Container(
                              width: 125,
                              height: 125,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Logo.png'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            child: Container(
                              height: h * 0.4,
                              width: w * 0.9,
                              // color: Colors.amber,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 140,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/check-mark.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Text(
                                    'ຂໍ້ມູນຂອງທ່ານ',
                                    style: TextStyle(
                                        fontSize: 39,
                                        letterSpacing: -1,
                                        color: Theme.of(context).errorColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'ໄດ້ຖືກບັນທືກເຂົ້່າໃນ',
                                    style: TextStyle(
                                        fontSize: 39,
                                        letterSpacing: -1,
                                        color: Theme.of(context).errorColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'ບັນຊີຮຽບຮ້ອຍແລ້ວ',
                                    style: TextStyle(
                                        fontSize: 39,
                                        letterSpacing: -1,
                                        color: Theme.of(context).errorColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 444,
            left: 126,
            child: SizedBox(
              width: 140,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MainScreen(navCurrentIndex: '0')));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).focusColor,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Text(
                  'ຕົກລົງ',
                  style: TextStyle(fontSize: 26, letterSpacing: -0.5),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
