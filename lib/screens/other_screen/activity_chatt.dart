import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/widgets/custom_appbar.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ActivityChatt extends StatelessWidget {
  ActivityChatt({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: CustomAppbar(
              imagePath: "assets/images/active_person.png",
              title: "Limited Edition",
              subtitle: "105 People",
              ontap: () {}),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
        child: Column(
          children: [
            Expanded(child: _chatBody()),
            _chattInput()
          ],
        ),
      ),
    );
  }

  Widget _chattInput() {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Transform.rotate(angle: -50.6,
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Color(0xFF5048A9),))),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tag_faces_rounded,
                      ),
                    ),
                    hintText: "Write something"),
                maxLines: null,
              ),
            ),
          ),
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt))
      ],
    );
  }
    //chatting body =======================>
  Widget _chatBody() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: const Center(child: Text("No Data Found"),)
    );
  }
}
