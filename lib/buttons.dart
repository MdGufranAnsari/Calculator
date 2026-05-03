import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final Color buttonColor;

  final VoidCallback buttonTapped;

  const Buttons({
    super.key,
    required this.buttonText,
    required this.textColor,
    required this.buttonTapped,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: buttonColor,
            // padding: const EdgeInsets.all(50), // ✅ inside
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
