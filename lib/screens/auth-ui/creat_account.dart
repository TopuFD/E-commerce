import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/auth-ui/signin_screen.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:full_ecommerce/widgets/form_heading_text.dart';
import 'package:full_ecommerce/widgets/textformfield.dart';
import 'package:get/get.dart';

class CreatAccountScreen extends StatelessWidget {
  CreatAccountScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController adressController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .02 ),
            child: Column(
              children: [
                const Text(
                  'Create an account',
                  style: TextStyle(
                    color: Color(0xFF080A24),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(height: size.height * .02,),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Sagittis at tristique arcu auctor nec mi.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8A8A8A),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: size.height * .05,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: FormHedingText(text: "Name")),
                SizedBox(height: size.height * .02,),
                CustomTextFormField(hintText: "Enter Name", controller: nameController,prefixIcon: const Icon(Icons.person),),
                SizedBox(height: size.height * .03,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: FormHedingText(text: "Address")),
                SizedBox(height: size.height * .02,),
                CustomTextFormField(hintText: "Enter Address", controller: adressController,prefixIcon: const Icon(Icons.location_on),),
                SizedBox(height: size.height * .03,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: FormHedingText(text: "Country")),
                SizedBox(height: size.height * .02,),
                CustomTextFormField(hintText: "Enter Country", controller: countryController,prefixIcon: const Icon(Icons.flag),),
                SizedBox(height: size.height * .03,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: FormHedingText(text: "City")),
                SizedBox(height: size.height * .02,),
                CustomTextFormField(hintText: "Enter City", controller: cityController,prefixIcon: const Icon(Icons.location_city),),
                SizedBox(height: size.height * .03,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: FormHedingText(text: "State")),
                SizedBox(height: size.height * .02,),
                CustomTextFormField(hintText: "Enter State", controller: nameController,prefixIcon: const Icon(Icons.kayaking_rounded),),


                SizedBox(height: size.height * .08,),


                CustomAuthButton(text: "Sign In", ontap: (){}),
                SizedBox(height: size.height * .05,),

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
                          Get.to(SignInScreen());
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
    );
  }
}
