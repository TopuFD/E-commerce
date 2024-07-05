import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/widgets/custom_auth_button.dart';
import 'package:full_ecommerce/widgets/textformfield.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController catagoryController = TextEditingController();

  var value = 0.0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Home',
          style: TextStyle(color: Color(0xFF000000)),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * .02, horizontal: size.width * .05),
          child: Column(
            children: [
              CustomAuthButton(text: '+Add Activity', ontap: () {}),
              SizedBox(
                height: size.height * .05,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: const Color(0xFF3C3C3C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              CustomTextFormField(
                  hintText: 'Select Catagory',
                  controller: catagoryController,
                  suffixIcon: IconButton(
                      onPressed: () {
                        
                      },
                      icon:const Icon(Icons.keyboard_arrow_down))),
              SizedBox(
                height: size.height * .05,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Area in KM',
                  style: TextStyle(
                    color: const Color(0xFF3C3C3C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .2,
                child: Stack(children: [
                  Slider(
                      min: 0.0,
                      max: 90.0,
                      divisions: 20,
                      thumbColor: const Color(0xFF4863a6),
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      }),
                  Positioned(
                    top: 12,
                    left: 5,
                    child: Transform.rotate(
                      angle: -150.0,
                      child: Stack(children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFF4863a6),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50.r),
                                  topLeft: Radius.circular(50.r),
                                  topRight: Radius.circular(50.r))),
                        ),
                        Positioned(
                            top: 20,
                            left: 16,
                            child: Transform.rotate(
                              angle: 200.2,
                              child: Text(
                                value.toStringAsFixed(0),
                                style: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 12.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0.11,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ))
                      ]),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
