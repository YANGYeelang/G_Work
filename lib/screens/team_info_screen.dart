import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Team-Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const Text(
                    'ປອ. ສະຫວາດ ໄຊບັນດິດ',
                    style: TextStyle(fontSize: 18, letterSpacing: -0.8),
                  ),
                  const Text('(ອາຈານສອນ)',
                      style: TextStyle(letterSpacing: -0.6)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "   👉 ເຄີຍສືກສາຢູທີ:",
                    style: TextStyle(letterSpacing: -0.7),
                  ),
                  Text(
                      "•   ລະດັບປະລິຍາເອກ:(ປີ 2019-2022)ທີ Osaka University (OU) "
                      "ປະເທດຢີ່ປຸນ"),
                  Text("•  ລະດັບປະລິຍາໂທ:(ປີ 2016-2018)ທີພາກວິຊາວິສະວະກໍາໄຟຟ້າ "
                      "ມະຫາວິທະຍາໄລຈູລາລົງກອນມ, ປະເທດໄທ"),
                  Text(
                      "•   ລະດັບປະລິຍາຕີ:(ປີ 2010-2015)ທີພາກວິຊາວິສະວະກໍາຄອມພິວເຕີ "
                      "ແລະ ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ, ມະຫາວິທະຍາໄລແຫ່ງຊາດ"),
                  SizedBox(
                    height: 15,
                  ),
                  Text("👉 ອາຊີປະຈຸບັນ:",
                      style: TextStyle(letterSpacing: -0.7)),
                  Text(
                      "•   ເປັນອາຈານສອນຢູ່ທີ່: ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ,"
                      " ພາກວິຊາຄອມພິວເຕີ ແລະ ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ"),
                  Text("  ເປັນ CTO-Wayha Technology"),
                  SizedBox(
                    height: 30,
                  ),
                  Text("  ເບີໂທ/ WhatsApp: 02059095902"),
                  Text("  Facebook: Savath Saypadith"),
                  Text("  Email: Phettvanh.bp@gmail.com"),
                ],
              ),
            )
          ],
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
      appBar: AppBar(
        title: const Text('Team-Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const Text(
                    'ທ້າວ ເພັດຕາວັນ ບົວແພງ',
                    style: TextStyle(fontSize: 18, letterSpacing: -0.8),
                  ),
                  const Text('(ແບັງ)',
                      style: TextStyle(fontSize: 18, letterSpacing: -0.8)),
                  const Text('ນັກສືກສາ ຫ້ອງ 3IT2'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("👉 ກໍາລັງສືກສາຢູທີ:"),
                  Text(
                      "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ"),
                  Text("•  ສະຖາບັນ ຣັຕະນະ ບໍລິຫານທຸລະກິດ, ສາຂາການເງີນທະນາຄານ"),
                  SizedBox(
                    height: 15,
                  ),
                  Text("👉 ໜ້າທີຮັບຜິດຊອບ: ຂຽນໂຄດ"),
                  SizedBox(
                    height: 30,
                  ),
                  Text("ເບີໂທ/ WhatsApp: 02059095902"),
                  Text("Email: Phettvanh.bp@gmail.com"),
                ],
              ),
            )
          ],
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
      appBar: AppBar(
        title: const Text('Team-Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const Text(
                    'ທ້າວ ຢີລ່າງຢ່າງ ໜູຊົວຢ່າງ',
                    style: TextStyle(fontSize: 18, letterSpacing: -0.8),
                  ),
                  const Text('(ຢີ)',
                      style: TextStyle(fontSize: 18, letterSpacing: -0.8)),
                  const Text('ນັກສືກສາ ຫ້ອງ 3IT2'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("👉 ກໍາລັງສືກສາຢູທີ:"),
                  Text(
                      "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ"),
                  SizedBox(
                    height: 15,
                  ),
                  Text("👉 ໜ້າທີຮັບຜິດຊອບ: ຂຽນໂຄດ"),
                  SizedBox(
                    height: 30,
                  ),
                  Text("ເບີໂທ/ WhatsApp: 02028883297"),
                  Text("Email: yeelangy105@gmail.com"),
                ],
              ),
            )
          ],
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
      appBar: AppBar(
        title: const Text('Team-Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const Text(
                    'ນາງ ພຸດທະສອນ ສອນທະລາ',
                    style: TextStyle(fontSize: 18, letterSpacing: -0.8),
                  ),
                  const Text('(ແມັມ)',
                      style: TextStyle(fontSize: 18, letterSpacing: -0.8)),
                  const Text('ນັກສືກສາ ຫ້ອງ 3IT2'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("👉 ກໍາລັງສືກສາຢູທີ:"),
                  Text(
                      "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ"),
                  Text("•  ວິທະຍາໄ ສອນພີທັກລາວມ, ສາຂາພາສາອັງກິດທຸລະກິດ"),
                  SizedBox(
                    height: 15,
                  ),
                  Text("👉 ໜ້າທີຮັບຜິດຊອບ: UX/UI Design"),
                  SizedBox(
                    height: 30,
                  ),
                  Text("  ເບີໂທ/ WhatsApp: 02097257739"),
                  Text("  Facebook: Phouthasone Maem Sonethala"),
                  Text("  Email: phouthasonesonthala@gmail.com"),
                ],
              ),
            )
          ],
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
      appBar: AppBar(
        title: const Text('Team-Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const Text(
                    'ນາງ ບົວສະຫວັນ ໄຊຍະລາດ',
                    style: TextStyle(fontSize: 18, letterSpacing: -0.8),
                  ),
                  const Text('(ເຊົ້າ)',
                      style: TextStyle(fontSize: 18, letterSpacing: -0.8)),
                  const Text('ນັກສືກສາ ຫ້ອງ 3IT2'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("👉 ກໍາລັງສືກສາຢູທີ:"),
                  Text(
                      "•   ມະຫາວິທະຍາໄລແຫ່ງຊາດ, ຄະນະວິສະວະກໍາສາດ, ສາຂາວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ"),
                  SizedBox(
                    height: 15,
                  ),
                  Text("👉 ໜ້າທີຮັບຜິດຊອບ: ຄົ້ນຫາຂໍ້ມູນ ແລະ ຈັດເອກະສານ"),
                  SizedBox(
                    height: 30,
                  ),
                  Text("  ເບີໂທ/ WhatsApp: 02058003999"),
                  Text("  Facebook: Bouasavanh Xaiyalat"),
                  Text("  Email: bousavanh.xyl@gmail.com"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
