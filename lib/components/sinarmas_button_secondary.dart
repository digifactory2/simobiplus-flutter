import 'package:flutter/material.dart';

class SinarmasButtonSecondary extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onPressed;

  const SinarmasButtonSecondary(
    this.buttonText, {
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.infinity,
          minHeight: 50,
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
