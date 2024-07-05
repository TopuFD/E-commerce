import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen2.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:full_ecommerce/widgets/form_heading_text.dart';
import 'package:full_ecommerce/widgets/textformfield.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ResetpassScreen1 extends StatelessWidget {
  ResetpassScreen1({super.key});

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05,vertical:size.height * .02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/resetpass1.png"),
                SizedBox(
                  height: size.height * .06,
                ),
                Text(
                  'Reset Password?',
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
                  'Please enter your email to reset the password',
                  style: TextStyle(
                    color: const Color(0xFF989898),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ),
                SizedBox(
                  height: size.height * .08,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "Email")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Enter Email",
                  controller: emailController,
                  prefixIcon: const Icon(Icons.email),
                ),
                SizedBox(
                  height: size.height / 5,
                ),
                CustomAuthButton(
                    text: "Continue",
                    ontap: () {
                      Get.to(ResetpassScreen2());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
