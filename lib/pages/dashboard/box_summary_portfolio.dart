import 'package:flutter/material.dart';
import 'package:simobiplus/packages/simas_icons.dart';

class BoxSummaryPortfolio extends StatelessWidget {
  const BoxSummaryPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      // alignment: Alignment.center,
      width: screen.width * 0.31,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          print('Summary Portfolio');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Icon(
              Simas.new_card,
              color: Colors.red,
              size: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Summary Portfolio',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
