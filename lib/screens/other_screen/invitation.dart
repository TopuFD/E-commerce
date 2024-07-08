import 'package:flutter/material.dart';
import 'package:full_ecommerce/utils/activity_dialog.dart';
import 'package:full_ecommerce/widgets/request_user.dart';

class Invitation extends StatelessWidget {
  const Invitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return RequestUser(
              title: "Shorts Sporty",
              city: "Oliva",
              button1Ontap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(
                          image: "assets/images/accept.png",
                          dialogTitle: "Sent Request",
                          dialogDesce: "Are you sure sent request this user?",
                          firstButton: "Yes",
                          secondButton: "No",
                          ontap: () {
                            Navigator.pop(context);
                          });
                    });
              },
               button2Ontap: () { 
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(
                          image: "assets/images/accept.png",
                          dialogTitle: "Remove Request",
                          dialogDesce: "Are you sure remove request this user?",
                          firstButton: "Yes",
                          secondButton: "No",
                          ontap: () {
                            Navigator.pop(context);
                          });
                    });
                },
              button1Title: "Sent",
              imagePath: "assets/images/request_user.png", button2Title: 'Cancel',
            );
          }),
    ));
  }
}
