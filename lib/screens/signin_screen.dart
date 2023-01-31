import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/components/themes.dart';
import 'package:get_auth/screens/auth_controller.dart';
import 'package:get_auth/screens/signup_screen.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 130,
                      ),
                      width: w,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'ລ໋ອກອີນເຂົ້າລະບົບ',
                                style: TextStyle(
                                    fontFamily: 'Phetsarath',
                                    fontSize: 19,
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: Container(
                                height: 45,
                                width: w * 0.7,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 254, 252, 252),
                                    borderRadius: BorderRadius.circular(22),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        spreadRadius: 7,
                                        offset: const Offset(1, 1),
                                        color: Colors.grey.withOpacity(0.2),
                                      )
                                    ]),
                                child: TextField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  strutStyle:
                                      const StrutStyle(height: 2, fontSize: 17),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(fontSize: 19),
                                    hintText: 'Email',
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Color.fromARGB(255, 157, 137, 113),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(22),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 254, 252, 252),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(22),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 254, 252, 252),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                height: 45,
                                width: w * 0.7,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 254, 252, 252),
                                    borderRadius: BorderRadius.circular(22),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        spreadRadius: 7,
                                        offset: const Offset(1, 1),
                                        color: Colors.grey.withOpacity(0.2),
                                      )
                                    ]),
                                child: TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  strutStyle:
                                      const StrutStyle(height: 2, fontSize: 17),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(fontSize: 19),
                                    hintText: 'Password',
                                    prefixIcon: const Icon(
                                      Icons.password_outlined,
                                      color: Color.fromARGB(255, 157, 137, 113),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(22),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 254, 252, 252),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(22),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 254, 252, 2525),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AuthController.instance.login(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );
                      },
                      child: Container(
                        width: w * 0.6,
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: const Color.fromARGB(255, 116, 182, 194)),
                        child: const Center(
                          child: Text(
                            'ລ໋ອກອີນ',
                            style: TextStyle(
                              fontFamily: 'Phetsarath',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Text(
                        'ທ່ານລືມລະຫັດຜ່ານບໍ?',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 19,
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                    SizedBox(
                      height: w * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'ບໍ່ມີບັນຊີ/',
                          style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 19,
                            color: Theme.of(context).accentColor,
                          ),
                          children: [
                            TextSpan(
                              text: ' ລົງທະບຽນ',
                              style: TextStyle(
                                  fontFamily: 'Phetsarath',
                                  color: Theme.of(context).indicatorColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Get.to(() => const SignUpPage()),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: h * 0.08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: w * 0.2,
                          height: 1,
                          color: Theme.of(context).accentColor,
                        ),
                        SizedBox(
                          width: w * 0.07,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ຫຼືເຊື່ອມຕໍ່ກັບ',
                            style: TextStyle(
                              fontFamily: 'Phetsarath',
                              fontSize: 16,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.07,
                        ),
                        Container(
                          width: w * 0.2,
                          height: 1,
                          color: Theme.of(context).accentColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 140,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/facebook1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Facebook",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: h * 0.06,
                        ),
                        SizedBox(
                          width: 140,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/google.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Google",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
