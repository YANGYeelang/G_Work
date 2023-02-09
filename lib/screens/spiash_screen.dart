import 'package:flutter/material.dart';

class SpiashScreen extends StatelessWidget {
  const SpiashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: const Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            backgroundColor: Color.fromARGB(10, 30, 30, 30),
            color: Color.fromARGB(255, 196, 196, 196),
          ),
        ),
      ),
    );
  }
}
