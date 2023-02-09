import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get_auth/screens/saved_screen.dart';

class MImpDetail extends StatefulWidget {
  const MImpDetail({super.key});

  @override
  State<MImpDetail> createState() => _MImpDetailState();
}

class _MImpDetailState extends State<MImpDetail> {
  TextEditingController imcomeController = TextEditingController();
  TextEditingController datetimeController = TextEditingController();
  TextEditingController describeController = TextEditingController();
  final items = [
    'ເງີນເດືອນ',
    'ຂາຍເຄື່ອງ',
    'ຂອງຂັວນ',
    'ແຟນໃຫ້',
    'ເກັບ',
    'ລາງວັນ',
  ];
  String? value;
  Offset distance = const Offset(0, 10);
  double blur = 10.0;

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
                    iconSize: 50,
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
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      inset: true,
                      offset: -distance,
                      color: Theme.of(context).dividerColor,
                    ),
                    const BoxShadow(
                      blurRadius: 2,
                      inset: true,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: imcomeController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 27),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'ເພີ່ມລາຍຮັບ',
                      hintStyle: TextStyle(
                        fontSize: 27,
                        color: Theme.of(context).indicatorColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Phetsarath',
                        letterSpacing: -0.7,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      inset: true,
                      offset: -distance,
                      color: Theme.of(context).dividerColor,
                    ),
                    const BoxShadow(
                      blurRadius: 2,
                      inset: true,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: datetimeController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 27),
                    textAlign: TextAlign.center,
                    // maxLength: 10,
                    decoration: InputDecoration(
                      hintText: 'ວັນ/ເວລາ/ປີ',
                      hintStyle: TextStyle(
                          fontSize: 27,
                          color: Theme.of(context).indicatorColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Phetsarath',
                          letterSpacing: -0.7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      inset: true,
                      offset: -distance,
                      color: Theme.of(context).dividerColor,
                    ),
                    const BoxShadow(
                      blurRadius: 2,
                      inset: true,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Center(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    controller: describeController,
                    style: const TextStyle(fontSize: 27),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'ລາຍລະອຽດເພີ່ມເຕີມ',
                      hintStyle: TextStyle(
                          fontSize: 27,
                          color: Theme.of(context).indicatorColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Phetsarath',
                          letterSpacing: -0.7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(0, 5),
                          color: Color.fromARGB(255, 179, 179, 179),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        imcomeController.clear();
                        datetimeController.clear();
                        describeController.clear();
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 70, 118, 154),
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
                  Container(
                    width: 100,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(0, 5),
                          color: Color.fromARGB(255, 195, 195, 195),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedScreen()));
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 176, 218, 216),
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
  TextEditingController paidController = TextEditingController();
  TextEditingController dattimeController = TextEditingController();
  TextEditingController describeController = TextEditingController();
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
  Offset distance = const Offset(0, 10);
  double blur = 10.0;

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
                    iconSize: 50,
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
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      inset: true,
                      offset: -distance,
                      color: Theme.of(context).dividerColor,
                    ),
                    const BoxShadow(
                      blurRadius: 2,
                      inset: true,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: paidController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 27),
                    textAlign: TextAlign.center,
                    // maxLength: 10,
                    decoration: InputDecoration(
                      hintText: 'ເພີ່ມລາຍຈ່າຍ',
                      hintStyle: TextStyle(
                          fontSize: 27,
                          color: Theme.of(context).indicatorColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Phetsarath',
                          letterSpacing: -0.7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      inset: true,
                      offset: -distance,
                      color: Theme.of(context).dividerColor,
                    ),
                    const BoxShadow(
                      blurRadius: 2,
                      inset: true,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: dattimeController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 27),
                    textAlign: TextAlign.center,
                    // maxLength: 10,
                    decoration: InputDecoration(
                      hintText: 'ວັນ/ເວລາ/ປີ',
                      hintStyle: TextStyle(
                          fontSize: 27,
                          color: Theme.of(context).indicatorColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Phetsarath',
                          letterSpacing: -0.7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.75,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      inset: true,
                      offset: -distance,
                      color: Theme.of(context).dividerColor,
                    ),
                    const BoxShadow(
                      blurRadius: 2,
                      inset: true,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Center(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    controller: describeController,
                    style: const TextStyle(fontSize: 27),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'ລາຍລະອຽດເພີ່ມເຕີມ',
                      hintStyle: TextStyle(
                          fontSize: 27,
                          color: Theme.of(context).indicatorColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Phetsarath',
                          letterSpacing: -0.7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(0, 5),
                          color: Color.fromARGB(255, 179, 179, 179),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        paidController.clear();
                        dattimeController.clear();
                        describeController.clear();
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 70, 118, 154),
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
                  Container(
                    width: 100,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(0, 5),
                          color: Color.fromARGB(255, 195, 195, 195),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedScreen()));
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 176, 218, 216),
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
