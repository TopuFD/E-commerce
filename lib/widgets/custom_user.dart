import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomUser extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desce;

  const CustomUser({
    super.key,
    required this.imagePath,
    required this.title,
    required this.desce,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: Container(
              color: Colors.grey,
              height: Get.height * 0.13,
              width: Get.width * 0.28,
              child: Image.asset(
                imagePath,
                height: Get.height * 0.1, // Adjust the image height as needed
                width: Get.width * 0.11, // Take full width of the column
                fit: BoxFit.cover, // Ensure the image covers the space
              ),
            ),
          ),
          SizedBox(height: 10.h), // Add spacing between image and text
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.4, // Adjusted line height for better readability
            ),
          ),
          SizedBox(height: Get.height * .001), // Add spacing between title and description
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on,color:Color(0xFFAEAEAE),),
              Text(
                desce,
                style: TextStyle(
                  color: const Color(0xFFAEAEAE),
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.4, // Adjusted line height for better readability
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cardButton(const Icon(Icons.timer), "8 Hours"),
              cardButton(const Icon(Icons.watch_later_outlined), "09:45 AM"),
              cardButton(const Icon(Icons.calendar_month), "24/5/2024"),
            ],
          ),
          const Divider(color: Colors.black,)
        ],
      ),
    );
  }

  Widget cardButton(Icon icon, String text) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xB39E9E9E),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          icon,
          SizedBox(width: 5.w), // Adjust spacing between icon and text
          Text(
            text,
            style: TextStyle(
              color: const Color(0xFF5347A7),
              fontSize: 12.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
