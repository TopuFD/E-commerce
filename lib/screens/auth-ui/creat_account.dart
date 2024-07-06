import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/auth-ui/signin_screen.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:full_ecommerce/widgets/form_heading_text.dart';
import 'package:full_ecommerce/widgets/textformfield.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreatAccountScreen extends StatefulWidget {
  const CreatAccountScreen({super.key});

  @override
  State<CreatAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreatAccountScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  String? _imagePath;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    var prefs = await SharedPreferences.getInstance();
    var getImagePath = prefs.getString("imagePath");

    if (getImagePath != null && getImagePath.isNotEmpty) {
      setState(() {
        _imagePath = getImagePath;
      });
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
      var prefs = await SharedPreferences.getInstance();
      prefs.setString("imagePath", pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * .05, vertical: size.height * .02),
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
                SizedBox(
                  height: size.height * .02,
                ),
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
                SizedBox(
                  height: size.height * .05,
                ),
                Stack(
                  children: [
                    _imagePath != null && _imagePath!.isNotEmpty
                        ? ClipRRect(
                            borderRadius:
                                BorderRadius.circular(size.height * .1),
                            child: Image.file(
                              height: size.height * .2,
                              width: size.height * .2,
                              File(_imagePath!),
                              fit: BoxFit.fill,
                            ))
                        : ClipRRect(
                            borderRadius:
                                BorderRadius.circular(size.height * .1),
                            child: Container(
                                color: Colors.green,
                                child: Icon(
                                  Icons.person,
                                  size: size.height * .2,
                                )),
                          ),
                    Positioned(
                        bottom: 0.h,
                        right: 0.w,
                        child: InkWell(
                          onTap: () {
                            _showModalSheet();
                          },
                          child: Container(
                            padding: EdgeInsets.all(size.width * .03),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              border: Border.all(
                                  color: Colors.white, width: size.width * .01),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "Name")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Enter Name",
                  controller: nameController,
                  prefixIcon: const Icon(Icons.person),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "Address")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Enter Address",
                  controller: addressController,
                  prefixIcon: const Icon(Icons.location_on),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "Country")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Enter Country",
                  controller: countryController,
                  prefixIcon: const Icon(Icons.flag),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "City")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Enter City",
                  controller: cityController,
                  prefixIcon: const Icon(Icons.location_city),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: FormHedingText(text: "State")),
                SizedBox(
                  height: size.height * .02,
                ),
                CustomTextFormField(
                  hintText: "Enter State",
                  controller: stateController,
                  prefixIcon: const Icon(Icons.kayaking_rounded),
                ),
                SizedBox(
                  height: size.height * .08,
                ),
                CustomAuthButton(text: "Sign In", ontap: () {}),
                SizedBox(
                  height: size.height * .05,
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

  // Modal bottom sheet
  void _showModalSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r))),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  "Pick Your Image",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () async {
                          await _pickImage(ImageSource.camera);
                          // ignore: use_build_context_synchronously
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.camera,
                          color: Colors.blue,
                          semanticLabel: "Camera",
                          size: 100.sp,
                        )),
                    IconButton(
                        onPressed: () async {
                          await _pickImage(ImageSource.gallery);
                          // ignore: use_build_context_synchronously
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.image,
                          color: Colors.blue,
                          semanticLabel: "Gallery",
                          size: 100.sp,
                        ))
                  ],
                )
              ],
            ),
          );
        });
  }
}
