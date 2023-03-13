import 'package:flutter/material.dart';

class greyLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: MediaQuery.of(context).size.width - 80,
      child: const DecoratedBox(
        decoration: const BoxDecoration(color: Color(0xffECECEC)),
      ),
    );
  }
}
