import 'package:flutter/material.dart';
import 'package:get_auth/screens/main_screen.dart';
import 'package:get_auth/screens/saved_screen.dart';

class MImpDetail extends StatefulWidget {
  const MImpDetail({super.key});

  @override
  State<MImpDetail> createState() => _MImpDetailState();
}

class _MImpDetailState extends State<MImpDetail> {
  final items = [
    'ເງີນເດືອນ',
    'ຂາຍເຄື່ອງ',
    'ຂອງຂັວນ',
    'ແຟນໃຫ້',
    'ເກັບ',
    'ລາງວັນ',
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;

    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: const TextStyle(fontSize: 27, letterSpacing: -0.7),
          ),
        );

    return Container(
      width: w,
      height: h * 1.7,
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Center(
        child: SizedBox(
          height: h * 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: Center(
                  child: DropdownButton<String>(
                    hint: Center(
                      child: Text(
                        'ເລືອກໝວດ',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).indicatorColor,
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.3),
                      ),
                    ),
                    dropdownColor: Theme.of(context).buttonColor,
                    borderRadius: BorderRadius.circular(20),
                    value: value,
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() {
                      this.value = value;
                    }),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: const Center(
                  child: Text(
                    'ເພີ່ມລາຍຮັບ',
                    style: TextStyle(
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: const Center(
                  child: Text(
                    'ວັນ/ເວລາ/ປີ',
                    style: TextStyle(
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: const Center(
                  child: Text(
                    'ລາຍລະອຽດເພີ່ມເຕີມ',
                    style: TextStyle(
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 217, 96, 85),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text(
                        'ຍົກເລີກ',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Phetsarath',
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 100,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedScreen()));
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 119, 170, 100),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text(
                        'ບັນທືກ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Phetsarath',
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PImpDetail extends StatefulWidget {
  const PImpDetail({super.key});

  @override
  State<PImpDetail> createState() => _PImpDetailState();
}

class _PImpDetailState extends State<PImpDetail> {
  final items = [
    'ເຄື່ອງໃຊ້',
    'ຄ່ານໍ້າ/ໄຟ',
    'ສຸຂະພາບ',
    'ທີ່ພັກ',
    'ອາຫານ',
    'ເຄື່ອງເດີ່ມ',
    'ການຮຽນ',
    'ບັນເທີງ',
    'ເດີນທາງ',
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;

    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: const TextStyle(fontSize: 27, letterSpacing: -0.7),
          ),
        );

    return Container(
      width: w,
      height: h * 1.7,
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Center(
        child: SizedBox(
          height: h * 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: Center(
                  child: DropdownButton<String>(
                    hint: Center(
                      child: Text(
                        'ເລືອກໝວດ',
                        style: TextStyle(
                            fontFamily: 'Phetsarath',
                            color: Theme.of(context).indicatorColor,
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.3),
                      ),
                    ),
                    dropdownColor: Theme.of(context).buttonColor,
                    borderRadius: BorderRadius.circular(20),
                    value: value,
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() {
                      this.value = value;
                    }),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: const Center(
                  child: Text(
                    'ເພີ່ມລາຍຈ່າຍ',
                    style: TextStyle(
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: const Center(
                  child: Text(
                    'ວັນ/ເວລາ/ປີ',
                    style: TextStyle(
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(17)),
                child: const Center(
                  child: Text(
                    'ລາຍລະອຽດເພີ່ມເຕີມ',
                    style: TextStyle(
                        fontFamily: 'Phetsarath',
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 217, 96, 85),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text(
                        'ຍົກເລີກ',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Phetsarath',
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 100,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedScreen()));
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 119, 170, 100),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text(
                        'ບັນທືກ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Phetsarath',
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
