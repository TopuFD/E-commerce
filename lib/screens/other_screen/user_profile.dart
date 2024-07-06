import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/utils/activity_dialog.dart';
import 'package:full_ecommerce/widgets/custom_user.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Column(
          children: [
            const CustomUser(
                imagePath: "assets/images/active_person.png",
                title: "Limited Edition",
                desce: "Current Location"),
            Expanded(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        'Edition',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.23,
                        ),
                      ),
                      subtitle: Text(
                        'City,  State',
                        style: TextStyle(
                          color: const Color(0xFF848484),
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.23,
                        ),
                      ),
                      trailing: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const WidgetStatePropertyAll(Color(0xFFFFEDED)),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              overlayColor: WidgetStateProperty.all(
                                const Color(0xFF5545A4),
                              )),
                          onPressed: () {
                            showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomDialog(
                                        image: "assets/images/remove.png",
                                        dialogTitle: "Remove user",
                                        dialogDesce:
                                            "Are you sure you remove this user?",
                                        firstButton: "Yes",
                                        secondButton: "No",
                                        ontap: () {
                                          Navigator.pop(context);
                                        });
                                  });
                          },
                          child: Text(
                            "Remove",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFFF36161),
                              fontSize: 14.73.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),
                          )),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: 40.h,
                          width: 44.w,
                          color: Colors.grey,
                          child: Image.asset(
                            "assets/images/active_person.png",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
