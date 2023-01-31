import 'package:flutter/material.dart';
import 'package:get_auth/screens/signin_screen.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ລະບົບ',
              style: TextStyle(
                fontFamily: 'Phetsarath',
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Container(
              width: 270,
              height: 280,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/Logo.png'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: h * 0.12,
            ),
            SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: const Text(
                  'ເຂົ້າສູ່ລະບົບ',
                  style: TextStyle(
                    fontFamily: 'Phetsarath',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 52, 179, 181),
                    letterSpacing: -0.1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
