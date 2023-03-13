import 'package:flutter/material.dart';

class BoxSimasPoin extends StatelessWidget {
  const BoxSimasPoin({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      width: screen.width * 0.31,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/simas-poin-new.png',
            width: 50,
          ),
          const SizedBox(height: 10),
          const Text(
            '0',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Tap for History',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
