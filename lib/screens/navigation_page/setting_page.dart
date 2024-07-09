
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_ecommerce/screens/other_screen/user_profile.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
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
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: Container(
                    color: Colors.grey,
                    height: Get.height * 0.1,
                    width: Get.width * 0.21,
                    child: Image.asset(
                      "assets/images/setting_img.png",
                      height:
                          Get.height * 0.1,
                      width: Get.width * 0.11,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * .02,
                ),
                Text(
                  'Joy Augustin',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
                SizedBox(
                  height: Get.height * .025,
                ),
                Text(
                  'joy@augustin.com',
                  style: TextStyle(
                    color: const Color(0xFFC6C6C6),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                ),
                SizedBox(height:Get.height * .02),
                // account section is starting form here============
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: Get.width * .05),
                    child: Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  width: Get.width,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const FaIcon(
                          FontAwesomeIcons.handHoldingDollar,
                          color: Color(0xFF8B8B8B),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF8B8B8B),
                        ),
                        title: Text(
                          'Payment Options',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const FaIcon(
                          FontAwesomeIcons.flag,
                          color: Color(0xFF8B8B8B),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF8B8B8B),
                        ),
                        title: Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.notifications,
                          color: Color(0xFF8B8B8B),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF8B8B8B),
                        ),
                        title: Text(
                          'Notification',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const UserProfile());
                        },
                        child: ListTile(
                          leading: const Icon(
                            Icons.person_2_rounded,
                            color: Color(0xFF8B8B8B),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Color(0xFF8B8B8B),
                          ),
                          title: Text(
                            'User Profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                // general section is starting form here============
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: Get.width * .05),
                    child: Text(
                      'General',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  width: Get.width,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const FaIcon(
                          FontAwesomeIcons.handHoldingMedical,
                          color: Color(0xFF8B8B8B),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF8B8B8B),
                        ),
                        title: Text(
                          'Support',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const FaIcon(
                          FontAwesomeIcons.shield,
                          color: Color(0xFF8B8B8B),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF8B8B8B),
                        ),
                        title: Text(
                          'Terms and Service',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.person_add_alt_1,
                          color: Color(0xFF8B8B8B),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF8B8B8B),
                        ),
                        title: Text(
                          'Invite friends',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const UserProfile());
                        },
                        
                        child: ListTile(
                          leading:const Icon(Icons.logout,color: Color(0xFF8B8B8B)),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
