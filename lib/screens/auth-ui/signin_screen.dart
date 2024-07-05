import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/auth-ui/creat_account.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen1.dart';
import 'package:full_ecommerce/screens/navigation_page/navigation.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:full_ecommerce/widgets/form_heading_text.dart';
import 'package:full_ecommerce/widgets/textformfield.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/splash_icon.png",
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/splash2_icon.png",
                    height: 60,
                  ),
                  SizedBox(
                    height: size.height * .04,
                  ),
                  Text('Sign In',
                      style: TextStyle(
                        color: const Color(0xFF080A24),
                        fontSize: 24.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      )),
                  Text(
                    'Hi! Welcome back, You\'ve been missed',
                    style: TextStyle(
                      color: const Color(0xFF8A8A8A),
                      fontSize: 13.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FormHedingText(text: "Email"),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        CustomTextFormField(
                          hintText: "Email",
                          controller: emailController,
                          prefixIcon: const Icon(Icons.email),
                        ),
                        SizedBox(
                          height: size.height * .04,
                        ),
                        const FormHedingText(text: "Password"),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        CustomTextFormField(
                          hintText: "Password",
                          controller: emailController,
                          prefixIcon: const Icon(Icons.email),
                        ),
                        SizedBox(
                          width: size.width,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {
                                Get.to(ResetpassScreen1());
                              },
                              child: Text(
                                'Reset Password?',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: const Color(0xFF8F9098),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.14.h,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .06,
                  ),
                  CustomAuthButton(
                      text: "SignIn",
                      ontap: () {
                        Get.to(const NavigationBarPage());
                      }),
                  SizedBox(
                    height: size.height * .15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: const Color(0xFFAAAAAA),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const CreatAccountScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
