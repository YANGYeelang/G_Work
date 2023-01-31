import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_auth/screens/home_screen.dart';
import 'package:get_auth/screens/init_amount_screen.dart';
import 'package:get_auth/screens/init_screen.dart';
import 'package:get_auth/screens/main_screen.dart';
import 'package:get_auth/screens/signin_screen.dart';
import 'package:get_auth/screens/sign_out_screen.dart';

class AuthController extends GetxController {
  //AuthController.instance
  static AuthController instance = Get.find();
  //email, password, name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    // our user would be not notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print('Login Page');
      Get.offAll(() => const InitScreen());
      // Get.offAll(() => SignInPage());
    } else {
      Get.offAll(() => const InitAmount());
      // Get.offAll(() => MainScreen(
      //       navCurrentIndex: '0',
      //     ));
      // Get.offAll(() => WelcomeScreen(email: user.email!));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        'About User',
        'User message',
        backgroundColor: const Color.fromARGB(255, 248, 54, 54),
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          'Account creation failed',
          style: TextStyle(color: Color.fromARGB(255, 243, 74, 74)),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      );
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar(
        'About Login',
        'Login message',
        backgroundColor: const Color.fromARGB(255, 252, 62, 62),
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          'Login failed',
          style: TextStyle(color: Color.fromARGB(255, 243, 74, 74)),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      );
    }
  }

  void logOut() async {
    await auth.signOut();
  }
}
