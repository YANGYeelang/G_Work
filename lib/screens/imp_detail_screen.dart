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
      height: h * 3,
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            height: h * 0.18,
            width: w * 0.75,
            decoration: BoxDecoration(
                color: Theme.of(context).disabledColor,
                borderRadius: BorderRadius.circular(17)),
            child: Center(
              child: DropdownButton<String>(
                // underline: ,
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
          const SizedBox(
            height: 16,
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
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
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
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
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
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 47,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ຍົກເລີກ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SavedScreen()));
                  },
                  child: Text(
                    'ບັນທືກ',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
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
                ),
              ),
            ],
          )
        ],
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
    'ອາຫານ/ເຄື່ອງເດີ່ມ',
    'ເຄື່ອງໃຊ້',
    'ຄ່ານໍ້າ/ໄຟ',
    'ສຸຂະພາບ',
    'ທີ່ພັກ',
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
      height: h * 3,
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            height: h * 0.18,
            width: w * 0.75,
            decoration: BoxDecoration(
                color: Theme.of(context).disabledColor,
                borderRadius: BorderRadius.circular(17)),
            child: Center(
              child: DropdownButton<String>(
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
          const SizedBox(
            height: 16,
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
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
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
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
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
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 47,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ຍົກເລີກ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SavedScreen()));
                  },
                  child: Text(
                    'ບັນທືກ',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
