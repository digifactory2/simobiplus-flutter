import 'package:flutter/material.dart';

class paddinghorizontal extends StatelessWidget {
  final double size;

  const paddinghorizontal({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
