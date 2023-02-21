import 'package:flutter/material.dart';

class SinarmasButton extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onPressed;

  const SinarmasButton(
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
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            elevation: 0,
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
