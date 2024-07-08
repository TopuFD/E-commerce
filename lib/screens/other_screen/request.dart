import 'package:flutter/material.dart';
import 'package:full_ecommerce/utils/activity_dialog.dart';
import 'package:full_ecommerce/widgets/request_user.dart';

class Request extends StatelessWidget {
  const Request({super.key});

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
                            dialogTitle: "Accept User",
                            dialogDesce: "Are you sure accept this user?",
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
                            image: "assets/images/remove.png",
                            dialogTitle: "Remove User",
                            dialogDesce: "Are you sure you remove this user?",
                            firstButton: "Yes",
                            secondButton: "No",
                            ontap: () {
                              Navigator.pop(context);
                            });
                      });
                },
                button1Title: "Accept",
                button2Title: "Desline",
                imagePath: "assets/images/request_user.png");
          }),
    ));
  }
}
