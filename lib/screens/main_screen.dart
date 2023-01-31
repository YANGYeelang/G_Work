import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get_auth/screens/about_us_screen.dart';
import 'package:get_auth/screens/graph_screen.dart';
import 'package:get_auth/screens/home_screen.dart';
import 'package:get_auth/screens/implements_screen.dart';
import 'package:get_auth/screens/sign_out_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_auth/screens/noti_screen.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  String navCurrentIndex;
  MainScreen({super.key, required this.navCurrentIndex});

  @override
  State<MainScreen> createState() => _MainScreenState(navCurrentIndex);
}

class _MainScreenState extends State<MainScreen> {
  late int currentIndex = int.parse(navCurrentIndex);

  String navCurrentIndex;
  _MainScreenState(this.navCurrentIndex);

  // late bool themevalue = true;
  // void checktheme(bool changed) {
  //   themevalue = changed;

  //   print(themevalue);
  // }

  // late Rx<User?> _user;
  // String email = '';

  // _initialScreen(User? user) {
  //   if (currentIndex == 1) {
  //     email = user.email;
  //   }
  // }

// screen[currentIndex]
  List screen = [
    const HomeScreen(),
    const GraphScreen(),
    ImpScreen(),
    const NotifiScreeen(),
    LogOutScreen(
      email: 'abc@abc.com',
      // newTheme: 2,
      // callBackFunction: checktheme,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // SpinCircleBottomBarHolder(
          //   bottomNavigationBar: SCBottomBarDetails(
          //       circleColors: [
          //         Theme.of(context).buttonColor,
          //         const Color.fromARGB(255, 142, 230, 231),
          //         const Color.fromARGB(255, 116, 182, 194)
          //       ],
          //       iconTheme: const IconThemeData(color: Colors.white, size: 44),
          //       activeIconTheme: const IconThemeData(
          //           color: Color.fromARGB(255, 204, 204, 204), size: 44),
          //       backgroundColor: const Color.fromARGB(255, 142, 230, 231),
          //       // titleStyle: const TextStyle(color: Colors.black45, fontSize: 12),
          //       // activeTitleStyle: const TextStyle(
          //       //   color: Colors.black,
          //       //   fontSize: 12,
          //       //   fontWeight: FontWeight.bold,
          //       // ),
          //       actionButtonDetails: SCActionButtonDetails(
          //         color: const Color.fromARGB(255, 116, 182, 194),
          //         icon: const Icon(
          //           Icons.add,
          //           color: Colors.white,
          //           size: 30,
          //         ),
          //         elevation: 1.0,
          //       ),
          //       elevation: 2.0,
          //       items: [
          //         // Suggested count : 4
          //         SCBottomBarItem(
          //           icon: Icons.home,
          //           title: "",
          //           onPressed: () {
          //             setState(() {
          //               currentIndex = 0;
          //             });
          //           },
          //         ),
          //         SCBottomBarItem(
          //             icon: Icons.catching_pokemon,
          //             title: "",
          //             onPressed: () {
          //               setState(() {
          //                 currentIndex = 1;
          //               });
          //             }),
          //         SCBottomBarItem(
          //             icon: Icons.notifications,
          //             title: "",
          //             onPressed: () {
          //               setState(() {
          //                 currentIndex = 3;
          //               });
          //             }),
          //         SCBottomBarItem(
          //           icon: Icons.person,
          //           title: "",
          //           onPressed: () {
          //             setState(() {
          //               currentIndex = 4;
          //             });
          //           },
          //         ),
          //       ],
          //       circleItems: [
          //         //Suggested Count: 3
          //         SCItem(
          //             icon: Icon(Icons.add),
          //             onPressed: () {
          //               setState(() {
          //                 currentIndex = 2;
          //               });
          //             }),
          //         SCItem(
          //             icon: Icon(Icons.minimize),
          //             onPressed: () {
          //               setState(() {
          //                 currentIndex = 2;
          //               });
          //             }),
          //       ],
          //       bnbHeight: 80 // Suggested Height 80
          //       ),
          //   child: Container(
          //     color: Colors.orangeAccent.withAlpha(55),
          //     child: Center(
          //       child: screen[currentIndex],
          //     ),
          //   ),
          // ),

          screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).highlightColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              size: 44,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.catching_pokemon,
              size: 44,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.add_circle,
              size: 44,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.notifications,
              size: 44,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
              size: 44,
            ),
          )
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
