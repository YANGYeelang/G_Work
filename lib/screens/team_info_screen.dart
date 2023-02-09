import 'package:flutter/material.dart';
import 'package:get_auth/screens/about_us_screen.dart';

class TeamInfo extends StatefulWidget {
  const TeamInfo({super.key});

  @override
  State<TeamInfo> createState() => _TeamInfoState();
}

class _TeamInfoState extends State<TeamInfo> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).indicatorColor,
                      )),
                ],
              ),
              Container(
                height: 180,
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/images/Savath.jpg'),
                    ),
                    Text(
                      'ປອ. ສະຫວາດ ໄຊປະດິດ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 18,
                          letterSpacing: -0.3),
                    ),
                    Text(
                      'ອາຈານສອນ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath', letterSpacing: -0.2),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "   👉 ເຄີຍສືກສາຢູທີ:",
                      style: TextStyle(fontFamily: 'Phetsarath'),
                    ),
                    Text(
                      "•   ລະດັບປະລິຍາເອກ: (ປີ 2019-2022) ທີ່ Osaka University (OU) "
                      "ປະເທດຢີ່ປຸນ",
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "•  ລະດັບປະລິຍາໂທ:(ປີ 2016-2018)ທີ່ພາກວິຊາວິສະວະກໍາໄຟຟ້າ "
                      "ມະຫາວິທະຍາໄລຈູລາລົງກອນ, ປະເທດໄທ",
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "•   ລະດັບປະລິຍາຕີ: (ປີ 2010-2015) ທີພາກວິຊາວິສະວະກໍາຄອມພິວເຕີ "
                      "ແລະ ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ, ມະຫາວິທະຍາໄລແຫ່ງຊາດ",
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("   👉 ອາຊີປະຈຸບັນ:",
                        style: TextStyle(letterSpacing: -0.7)),
                    Text(
                      "•   ເປັນອາຈານສອນຢູ່ທີ່: ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ,"
                      " ພາກວິຊາຄອມພິວເຕີ ແລະ ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ",
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "•  ເປັນ CTO-Wayha Technology",
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("  ເບີໂທ/ WhatsApp: 02059095902",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("  Facebook: Savath Saypadith",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("  Email: Phettvanh.bp@gmail.com",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamInfo1 extends StatefulWidget {
  const TeamInfo1({super.key});

  @override
  State<TeamInfo1> createState() => _TeamInfo1State();
}

class _TeamInfo1State extends State<TeamInfo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).indicatorColor,
                      )),
                ],
              ),
              Container(
                height: 190,
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/phet.jpg'),
                    ),
                    Text(
                      'ທ້າວ ເພັດຕາວັນ ບົວແພງ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 18,
                          letterSpacing: -0.3),
                    ),
                    Text('(ແບັງ)',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 18,
                            letterSpacing: -0.2)),
                    Text('ນັກສືກສາ ຫ້ອງ 3IT2',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("👉 ກໍາລັງສືກສາຢູທີ:",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    Text(
                        "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("•  ສະຖາບັນ ຣັຕະນະ ບໍລິຫານທຸລະກິດ, ສາຂາການເງີນທະນາຄານ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("👉 ໜ້າທີຮັບຜິດຊອບ: ຂຽນໂຄດ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("ເບີໂທ/ WhatsApp: 02059095902",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Email: Phettvanh.bp@gmail.com",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamInfo2 extends StatefulWidget {
  const TeamInfo2({super.key});

  @override
  State<TeamInfo2> createState() => _TeamInfo2State();
}

class _TeamInfo2State extends State<TeamInfo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).indicatorColor,
                      )),
                ],
              ),
              Container(
                height: 180,
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/welcome.png'),
                    ),
                    Text(
                      'ທ້າວ ຢີລ່າງຢ່າງ ໜູຊົວຢ່າງ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 18,
                          letterSpacing: -0.2),
                    ),
                    Text('(ຢີ)',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 18,
                            letterSpacing: -0.2)),
                    Text('ນັກສືກສາ ຫ້ອງ 3IT2',
                        style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 14,
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("👉 ກໍາລັງສືກສາຢູທີ:",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    Text(
                        "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("👉 ໜ້າທີຮັບຜິດຊອບ: ຂຽນໂຄດ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("ເບີໂທ/ WhatsApp: 02028883297",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Email: yeelangy105@gmail.com",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamInfo3 extends StatefulWidget {
  const TeamInfo3({super.key});

  @override
  State<TeamInfo3> createState() => _TeamInfo3State();
}

class _TeamInfo3State extends State<TeamInfo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).indicatorColor,
                      )),
                ],
              ),
              Container(
                height: 180,
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/pou.jpg'),
                    ),
                    Text(
                      'ນາງ ພຸດທະສອນ ສອນທະລາ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 18,
                          letterSpacing: -0.2),
                    ),
                    Text('(ແມັມ)',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 18,
                            letterSpacing: -0.2)),
                    Text('ນັກສືກສາ ຫ້ອງ 3IT2',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("👉 ກໍາລັງສືກສາຢູທີ:",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    Text(
                        "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("•  ວິທະຍາໄລ ສອນພີທັກລາວ, ສາຂາພາສາອັງກິດທຸລະກິດ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("👉 ໜ້າທີຮັບຜິດຊອບ: ອອກແບບ UI",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("  ເບີໂທ/ WhatsApp: 02097257739",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("  Facebook: Phouthasone Maem Sonethala",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("  Email: phouthasonesonthala@gmail.com",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamInfo4 extends StatefulWidget {
  const TeamInfo4({super.key});

  @override
  State<TeamInfo4> createState() => _TeamInfo4State();
}

class _TeamInfo4State extends State<TeamInfo4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).indicatorColor,
                      )),
                ],
              ),
              Container(
                height: 180,
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/sao.jpeg'),
                    ),
                    Text(
                      'ນາງ ບົວສະຫວັນ ໄຊຍະລາດ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 18,
                          letterSpacing: -0.2),
                    ),
                    Text('(ເຊົ້າ)',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 18,
                            letterSpacing: -0.2)),
                    Text('ນັກສືກສາ ຫ້ອງ 3IT2',
                        style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 14,
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("👉 ກໍາລັງສືກສາຢູທີ:",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    Text(
                        "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("👉 ໜ້າທີຮັບຜິດຊອບ: ຄົ້ນຫາຂໍ້ມູນ ແລະ ຈັດເອກະສານ",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 14,
                            letterSpacing: -0.2)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("  ເບີໂທ/ WhatsApp: 02058003999",
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("  Facebook: Bouasavanh Xaiyalat",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("  Email: bousavanh.xyl@gmail.com",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
