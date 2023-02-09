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
  bool? _passwordVisible;
  bool? _sePasswordVisible;

  @override
  void initState() {
    _passwordVisible = false;
    _sePasswordVisible = false;
    super.initState();
  }

  List images = ['google.png', 'facebook1.png'];
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    print(emailController);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              SingleChildScrollView(
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
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 190,
                      width: w * 0.7,
                      margin: const EdgeInsets.only(top: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 253, 253),
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: const Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2),
                                  )
                                ]),
                            child: TextField(
                              strutStyle:
                                  const StrutStyle(height: 2, fontSize: 17),
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: InputDecoration(
                                hintStyle: const TextStyle(fontSize: 19),
                                hintText: 'Email',
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Color.fromARGB(255, 157, 137, 113),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 205, 216, 205)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 205, 216, 205)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 253, 253),
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: const Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2),
                                  )
                                ]),
                            child: TextField(
                              obscureText: !_passwordVisible!,
                              controller: passwordController,
                              strutStyle:
                                  const StrutStyle(height: 2, fontSize: 17),
                              // obscureText: true,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: InputDecoration(
                                hintStyle: const TextStyle(fontSize: 19),
                                hintText: 'Password',
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Color.fromARGB(255, 157, 137, 113),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 205, 216, 205)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 205, 216, 205)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible!;
                                    });
                                  },
                                  icon: Icon(
                                    _passwordVisible!
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey[30],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 253, 253),
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: const Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2),
                                  )
                                ]),
                            child: TextField(
                              strutStyle:
                                  const StrutStyle(height: 2, fontSize: 17),
                              // controller: passwordController,
                              obscureText: !_sePasswordVisible!,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: InputDecoration(
                                  hintStyle: const TextStyle(fontSize: 19),
                                  hintText: 'Confirm',
                                  prefixIcon: const Icon(
                                    Icons.password_outlined,
                                    color: Color.fromARGB(255, 157, 137, 113),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 205, 216, 205)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 205, 216, 205)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _sePasswordVisible =
                                              !_sePasswordVisible!;
                                        });
                                      },
                                      icon: Icon(
                                        _sePasswordVisible!
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey[30],
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AuthController.instance.register(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        width: w * 0.7,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color.fromARGB(210, 116, 183, 195),
                        ),
                        child: const Center(
                          child: Text(
                            'ລົງຊື່ເຂົ້າໃໍຊ້',
                            style: TextStyle(
                              fontFamily: 'Phetsarath',
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4,
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        text: 'ທ່ານມີບັນຊີແລ້ວບໍ?',
                        style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 21,
                          color: Theme.of(context).accentColor,
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
            ]),
      ),
    );
  }
}
