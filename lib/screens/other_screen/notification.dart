import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/utils/activity_dialog.dart';
import 'package:full_ecommerce/widgets/request_user.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: const Color(0xFF1B1B1B),
            fontSize: 16.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .01),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
              return RequestUser(
                  title: "Shorts Sporty",
                  city: "Oliva",
                  button1Ontap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialog(
                              image: "assets/images/accept.png",
                              dialogTitle: "Accept User",
                              dialogDesce: "Are you sure accept this user?",
                              firstButton: "Yes",
                              secondButton: "No",
                              ontap: () {
                                Navigator.pop(context);
                              });
                        });
                  },
                  button2Ontap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialog(
                              image: "assets/images/remove.png",
                              dialogTitle: "Remove User",
                              dialogDesce: "Are you sure you remove this user?",
                              firstButton: "Yes",
                              secondButton: "No",
                              ontap: () {
                                Navigator.pop(context);
                              });
                        });
                  },
                  button1Title: "Accept",
                  button2Title: "Desline",
                  imagePath: "assets/images/request_user.png");
                        }),
            ),
          ],
        ),
      ),
    );
  }
}
