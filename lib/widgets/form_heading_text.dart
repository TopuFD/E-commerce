import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormHedingText extends StatelessWidget {
  final String text;

  // ignore: use_super_parameters
  const FormHedingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFF3C3C3C),
        fontSize: 12.sp,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        height: 0.11.h,
      ),
    );
  }
}
