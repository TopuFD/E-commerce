import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/other_screen/invitation.dart';
import 'package:full_ecommerce/screens/other_screen/request.dart';

class RequestInvitePage extends StatelessWidget {
  const RequestInvitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(
            'Requests and Invitations',
            style: TextStyle(
              color: const Color(0xFF1B1B1B),
              fontSize: 16.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: -0.48,
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: Container(
                color: Colors.white,
                child: TabBar(
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: const Color.fromARGB(177, 180, 15, 15),
                  tabs: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          "Requests",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          "Invitation",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
        body: const TabBarView(children: [
          Request(),
          Invitation()
        ]),
      ),
    );
  }
}
