import 'package:flutter/material.dart';

class paddingvertical extends StatelessWidget {
  final double size;

  const paddingvertical({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}
