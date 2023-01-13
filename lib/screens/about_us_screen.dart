import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_auth/screens/about_screen.dart';
import 'package:get_auth/screens/team_info_screen.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

late int counter = 0;

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: w * 0.2,
                ),
                SizedBox(
                  width: w * 0.32,
                  height: h * 0.1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'ກ່ຽວກັບພວກເຮົາ',
                      style: TextStyle(fontSize: 17, letterSpacing: -1),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.14,
          ),
          Column(
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/welcome.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    const Text(
                      'ປອ. ສະຫວາດ ໄຊປະດິດ',
                      style: TextStyle(
                          fontSize: 17,
                          letterSpacing: -1,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'ເພີ່ມເຕີມ...',
                        style: TextStyle(color: Theme.of(context).accentColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => const TeamInfo()),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/welcome.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'ທ. ເພັດຕາວັນ ບົວແພງ',
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'ນັກສືກສາ ຫ້ອງ 3IT2',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: -0.7,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ເພີ່ມເຕີມ...',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const TeamInfo1()),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/welcome.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'ທ. ຢີລ່າງຢ່າງ ໜູຊົວຢ່າງ',
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'ນັກສືກສາ ຫ້ອງ 3IT2',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: -0.7,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ເພີ່ມເຕີມ...',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const TeamInfo2()),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/welcome.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'ນ. ພຸດທະສອນ ສອນທະລາ',
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'ນັກສືກສາ ຫ້ອງ 3IT2',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: -0.7,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ເພີ່ມເຕີມ...',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const TeamInfo3()),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/welcome.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'ນ. ບົວສະຫວັນ ໄຊຍະລາດ',
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'ນັກສືກສາ ຫ້ອງ 3IT2',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: -0.7,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ເພີ່ມເຕີມ...',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const TeamInfo4()),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
