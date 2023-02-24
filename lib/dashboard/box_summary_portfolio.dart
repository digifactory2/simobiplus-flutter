import 'package:flutter/material.dart';

class BoxSummaryPortfolio extends StatelessWidget {
  const BoxSummaryPortfolio({super.key});

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
            'assets/images/saving-paycard.png',
            width: 50,
          ),
          const Text(
            'Summary Portfolio',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
