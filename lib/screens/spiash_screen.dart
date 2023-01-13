import 'package:flutter/material.dart';

class SpiashScreen extends StatelessWidget {
  SpiashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          child: const CircularProgressIndicator(
            backgroundColor: Color.fromARGB(255, 215, 45, 36),
          ),
        ),
      ),
    );
  }
}
