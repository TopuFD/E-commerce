import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class CustomAppbar extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback buttonOntap;
  final VoidCallback profileOntap;

  const CustomAppbar(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.buttonOntap, 
      required this.profileOntap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        InkWell(
          onTap: profileOntap,
          child: Row(
            children: [
              SizedBox(
                height: Get.height * .02,
              ),
              ClipRRect(
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
              SizedBox(
                width: Get.width * .01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                      letterSpacing: 0.27,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .024,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: const Color(0xFFA5A5A5),
                      fontSize: 10.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                      letterSpacing: 0.15,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: Get.width * .1,
              ),
              SizedBox(
                height: 25,
                width: 80,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Color(0xFFE2FFF1),),
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
                    onPressed: buttonOntap,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
                      child: Text(
                        "Requests",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF0FBC58),
                          fontSize: 14.73.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
