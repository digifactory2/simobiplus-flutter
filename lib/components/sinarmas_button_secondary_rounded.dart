import 'package:flutter/material.dart';

class SinarmasButtonSecondaryRounded extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onPressed;

  const SinarmasButtonSecondaryRounded(
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
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
