import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestUser extends StatelessWidget {
  final String title;
  final String city;
  final String imagePath;
  final VoidCallback button1Ontap;
  final VoidCallback button2Ontap;
  final String button1Title;
  final String button2Title;
  const RequestUser(
      {super.key,
      required this.title,
      required this.city,
      required this.button1Ontap,
      required this.button2Ontap,
      required this.button1Title,
      required this.button2Title,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
          letterSpacing: -0.23,
        ),
      ),
      subtitle: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: city,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.23,
          ),
        ),
        TextSpan(
          text: "City, State",
          style: TextStyle(
            color: const Color(0xFF848484),
            fontSize: 12.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.23,
          ),
        )
      ])),
      trailing: SizedBox(
        width: 150,
        height: 25,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                      Color(0xFFE2FFF1),
                    ),
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 0)),
                    fixedSize: WidgetStateProperty.all(const Size(60, 25)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    overlayColor: WidgetStateProperty.all(
                      const Color(0xFF5545A4),
                    )),
                onPressed: button1Ontap,
                child: Text(
                  button1Title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF0FBC58),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Color(0xFFFFEDED),),
                    fixedSize: WidgetStateProperty.all(const Size(60, 25)),
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 0)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    overlayColor: WidgetStateProperty.all(
                      const Color(0xFF5545A4),
                    )),
                onPressed: button2Ontap,
                child: Text(
                  button2Title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFF36161),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ],
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 40.h,
          width: 44.w,
          color: Colors.grey,
          child: Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
