import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/other_screen/activity_chatt.dart';
import 'package:full_ecommerce/utils/activity_dialog.dart';
import 'package:get/get.dart';

class PastActivity extends StatelessWidget {
  const PastActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Get.to(ActivityChatt()),
              child: Card(
                color: const Color(0x3FE3E0FF),
                elevation: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 40.h,
                                width: 44.w,
                                color: Colors.grey,
                                child: Image.asset(
                                  'assets/images/active_person.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              'Limited Edition',
                              style: TextStyle(
                                color: const Color(0xFF2C406E),
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(Icons.location_on_rounded,color:  Color(0xFF99A7C6),),
                                Text(
                                  'USA',
                                  style: TextStyle(
                                    color: const Color(0xFF99A7C6),
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomDialog(
                                        image: "assets/images/delete.png",
                                        dialogTitle: "Delete Activity?",
                                        dialogDesce:
                                            "Are you sure delete this activity?",
                                        firstButton: "Yes",
                                        secondButton: "No",
                                        ontap: () {
                                          Navigator.pop(context);
                                        });
                                  });
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Color(0xFFFF5F5F),
                              
                            ))
                      ],
                    ),
                    SizedBox(
                      height: size.height * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cardButton(const Icon(Icons.timer), "8 Hours"),
                        cardButton(
                            const Icon(Icons.watch_later_outlined), "09:45 AM"),
                        cardButton(
                            const Icon(Icons.calendar_month), "24/5/2024"),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .02,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ));
  }

  Widget cardButton(Icon icon, String text) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xCCE3E0FF),
          borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        child: Row(
          children: [
            icon,
            SizedBox(width: 10.w),
            Text(
              text,
              style: TextStyle(
                color: const Color(0xFF5347A7),
                fontSize: 12.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
