import 'package:flutter/material.dart';

class OutlinedSinarmasButton extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onPressed;

  const OutlinedSinarmasButton(
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
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.pink,
            elevation: 0,
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
