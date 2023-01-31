import 'package:flutter/material.dart';
import 'package:get_auth/screens/about_screen.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const About(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).indicatorColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 0.2,
                ),
                SizedBox(
                  width: 130,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                    ),
                    child: const Text(
                      'ກ່ຽວກັບແອັບ',
                      style: TextStyle(
                          fontFamily: 'Phetsarath',
                          fontSize: 18,
                          letterSpacing: -0.2),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                width: w * 0.9,
                height: h * 0.4,
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 40, left: 15),
                      child: Text(
                        '* ຈຸດປະສົງຂອງແອັບ*',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            fontSize: 18,
                            letterSpacing: -0.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                          '       ສໍາລັບ Story Money App  ນີ້ແມ່ນພວກເຮົາສ້າງຂື້ນເພື່ອຊ່ວຍໃນການຕິດຕາມຄ່າ'
                          'ໃຊ້ຈ່າຍຂອງຄົນເຮົາໃນແຕ່ລະມື້ເພື່ອໃຫ້ສະດວກໃນການດໍາລົງຊີວິດໃນປັດຈຸບັນໃຫ້ງ່າຍຂື້ນ'
                          ' ແລະ ແອັບນີ້ແມ່ນທຸກຄົນສາມາດໃຊ້ໄດ້ເພາະມັນໃຊ້ງາຍໂດຍການບັນທືກລາຍຮັບ - ລາຍຈ່າຍ'
                          'ເພື່ອໃຫ້ຮູ້ໃນແຕ່ລະມື້ມີເງີນເຂົ້້າ - ລາຍຈ່າຍ ເທົ່າໃດ ແລະ ເສຍຄ່າຈ່າຍໄປກັບຫຍັງແດ່ໃນແຕ່ລະມື້'
                          'ເພາະໃນປັດຈຸບັນເຮົາຈະມານັ່ງຈົດໃສ່ເຈ້ຍມັນກໍອາດຈະບໍສະດວກໃນການພົບພາໄປໃນສະຖານມີຕ່າງໆ'
                          ' ຍ້ອນເຫດຜົນນີ້ເຮົາຈື່ງສ້າງແອັບນີ້ຂື້ນມາ',
                          style: TextStyle(
                              fontFamily: 'Phetsarath',
                              fontSize: 14.5,
                              letterSpacing: -0.1)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
