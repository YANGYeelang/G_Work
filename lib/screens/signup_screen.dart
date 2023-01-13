import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/screens/auth_controller.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    List images = ['google.png', 'facebook1.png'];
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    print(emailController);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   width: w,
            //   height: h * 0.3,
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/images/welcome.png"),
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 160,
            ),
            const Text(
              'ລົງທະບຽນ',
              style: TextStyle(
                fontSize: 26,
                letterSpacing: -0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 253, 253),
                        borderRadius: BorderRadius.circular(30),
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
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 157, 137, 113),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 205, 216, 205)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 205, 216, 205)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 253, 253),
                        borderRadius: BorderRadius.circular(30),
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
                      // obscureText: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Color.fromARGB(255, 157, 137, 113),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 205, 216, 205)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 205, 216, 205)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.register(
                  emailController.text.trim(),
                  passwordController.text.trim(),
                );
              },
              child: Container(
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 116, 182, 194)
                    // image: const DecorationImage(
                    //   image: AssetImage("assets/images/button.png"),
                    //   fit: BoxFit.cover,
                    // ),
                    ),
                child: const Center(
                  child: Text(
                    'ລົງຊື່ເຂົ້າໃໍຊ້',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                text: 'ມີບັນຊີແລ້ວ?',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).indicatorColor,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            // RichText(
            //   text: const TextSpan(
            //     text: 'ລົງທະບຽນຜ່ານ',
            //     style: TextStyle(color: Colors.grey, fontSize: 20),
            //   ),
            // ),
            // Wrap(
            //   children: List<Widget>.generate(2, (index) {
            //     return Padding(
            //       padding: const EdgeInsets.all(19.0),
            //       child: CircleAvatar(
            //         radius: 30,
            //         backgroundColor: Color.fromARGB(255, 190, 197, 205),
            //         child: CircleAvatar(
            //           radius: 26,
            //           backgroundColor: const Color.fromARGB(255, 207, 213, 220),
            //           backgroundImage:
            //               AssetImage('assets/images/' + images[index]),
            //         ),
            //       ),
            //     );
            //   }),
            // )
          ],
        ),
      ),
    );
  }
}
