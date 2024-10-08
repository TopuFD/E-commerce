import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/app_route/route.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:full_ecommerce/widgets/form_heading_text.dart';
import 'package:full_ecommerce/widgets/textformfield.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ResetpassScreen3 extends StatelessWidget {
  ResetpassScreen3({super.key});

  TextEditingController newpassController = TextEditingController();
  TextEditingController compassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * .05, vertical: size.height * .02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/resetpass3.png",
                  height: size.height / 5,
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                Text(
                  'Set a New Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  'Create a new password. Ensure it',
                  style: TextStyle(
                    color: const Color(0xFF989898),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  'differs from previous ones for security',
                  style: TextStyle(
                    color: const Color(0xFF989898),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ),
                SizedBox(
                  height: size.height * .06,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "New Password")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "New Password",
                  controller: newpassController,
                  prefixIcon: const Icon(Icons.email),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "Confirm New Password")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Confirm New Password",
                  controller: compassController,
                  prefixIcon: const Icon(Icons.email),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: size.height / 8,
                ),
                CustomAuthButton(
                    text: "Continue",
                    ontap: () {
                      Get.toNamed(AppRoute.resetPassScreen4);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
