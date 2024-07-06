import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog extends StatelessWidget {
  final String image;
  final String dialogTitle;
  final String dialogDesce;
  final String firstButton;
  final String secondButton;
  final VoidCallback OnTap;
  const CustomDialog(
      {super.key,
      required this.image,
      required this.dialogTitle,
      required this.dialogDesce,
      required this.firstButton,
      required this.secondButton,
      // ignore: non_constant_identifier_names
      required this.OnTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      content: SizedBox(
        height: size.height * .31,
        child: Column(
          children: [
            Image.asset(image),
            SizedBox(height: size.height * .02,),
            Text(
              dialogTitle,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF010101),
                fontSize: 16.57.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: size.height * .02,),
            Text(
              dialogDesce,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xB2010101),
                fontSize: 12.89.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0.09,
              ),
            ),
            SizedBox(height: size.height * .05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                   overlayColor: WidgetStateProperty.all(const Color(0xFF5545A4),)
                  ),
                    onPressed: OnTap,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                      child: Text(
                        firstButton,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF010101),
                          fontSize: 14.73.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      ),
                    )),
                ElevatedButton(
                  style: ButtonStyle(
                   overlayColor: WidgetStateProperty.all(const Color(0xFF5545A4),)
                  ),
                    onPressed: OnTap,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                      child: Text(
                        secondButton,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF010101),
                          fontSize: 14.73.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
