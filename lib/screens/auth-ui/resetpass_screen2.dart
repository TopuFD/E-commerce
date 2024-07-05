import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen3.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class ResetpassScreen2 extends StatelessWidget {
 const ResetpassScreen2({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05,vertical: size.height * .02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/resetpass2.png"),
                SizedBox(
                  height: size.height * .06,
                ),
                Text(
                  'Check Your Email',
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
                  'We sent a reset link to alpha...@gmail.com',
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
                  'enter 5 digit code that mentioned in the email',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .06),
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      inactiveColor: const Color.fromARGB(66, 73, 73, 73),
                      inactiveFillColor: Colors.white,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: size.height * .08,
                      fieldWidth: size.width * .15,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),
                ),
                SizedBox(
                  height: size.height / 6,
                ),
                CustomAuthButton(
                    text: "Continue",
                    ontap: () {
                      Get.to(ResetpassScreen3());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
