import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomAuthButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 320,
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(1.00, -0.10),
            end: Alignment(-1, 0.1),
            colors: [
              Color(0xFF763586),
              Color(0xFF3F51BA),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(43),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x19C94210),
              blurRadius: 30,
              offset: Offset(0, 10),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 1.5,
              letterSpacing: -0.16,
            ),
          ),
        ),
      ),
    );
  }
}
