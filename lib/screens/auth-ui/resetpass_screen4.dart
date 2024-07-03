import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';

// ignore: must_be_immutable
class ResetpassScreen4 extends StatelessWidget {
  ResetpassScreen4({super.key});

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/resetpass4.png"),
                SizedBox(
                  height: size.height * .06,
                ),
                Text(
                  'Successful',
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
                  'Congratulations! Your password has',
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
                  'been changed. Click done to login',
                  style: TextStyle(
                    color: const Color(0xFF989898),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ),
                SizedBox(
                  height: size.height / 3,
                ),
                CustomAuthButton(
                    text: "Done",
                    ontap: () {
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
