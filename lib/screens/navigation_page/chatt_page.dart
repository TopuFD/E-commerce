// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// // ignore: must_be_immutable
// class ChattPage extends StatefulWidget {
//   const ChattPage({super.key});

//   @override
//   State<ChattPage> createState() => _ChattPageState();
// }

// class _ChattPageState extends State<ChattPage> {
//   TextEditingController searchController = TextEditingController();
//   int _itemCount = 20;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           centerTitle: true,
//           title: Text(
//             'Chats',
//             style: TextStyle(
//               color: const Color(0xFF1B1B1B),
//               fontSize: 16.sp,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w700,
//               height: 0,
//               letterSpacing: -0.48,
//             ),
//           ),
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
//           child: Column(
//             children: [
//               Container(
//                 decoration: ShapeDecoration(
//                   color: Colors.white,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                   shadows: [
//                     BoxShadow(
//                       color: const Color(0x26000000),
//                       blurRadius: 36.83.h,
//                       offset: Offset(0, 14.73.h),
//                       spreadRadius: 0,
//                     )
//                   ],
//                 ),
//                 child: TextFormField(
//                   controller: searchController,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Search",
//                     prefixIcon: IconButton(
//                         onPressed: () {}, icon: const Icon(Icons.search)),
//                   ),
//                 ),
//               ),
//               Expanded(
//                   child: ListView.builder(
//                       itemCount: _itemCount,
//                       itemBuilder: (context, index) {
//                         return Dismissible(
//                           key: const ValueKey("key"),
//                           onDismissed: (value) {
//                             setState(() {
//                               _itemCount--;
//                             });
//                           },
//                           background: Container(
//                             color: Colors.red,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Icon(
//                                   Icons.delete,
//                                   color: Colors.white,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           child: Column(
//                             children: [
//                               ListTile(
//                                 title: Text(
//                                   'Lorem Ipsum',
//                                   style: TextStyle(
//                                     color: const Color(0xFF010101),
//                                     fontSize: 13.sp,
//                                     fontFamily: 'Poppins',
//                                     fontWeight: FontWeight.w600,
//                                     height: 0,
//                                   ),
//                                 ),
//                                 subtitle: Row(
//                                   children: [
//                                     const Icon(Icons.check),
//                                     Text(
//                                       'Good bye!',
//                                       style: TextStyle(
//                                         color: const Color(0xFF3C3C3C),
//                                         fontSize: 13.sp,
//                                         fontFamily: 'Gilroy-Regular',
//                                         fontWeight: FontWeight.w400,
//                                         height: 0,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 leading: ClipRRect(
//                                   borderRadius: BorderRadius.circular(100),
//                                   child: Container(
//                                     height: 40.h,
//                                     width: 44.w,
//                                     color: Colors.grey,
//                                     child: Image.asset(
//                                       "assets/images/active_person.png",
//                                       height: 40,
//                                       width: 40,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 trailing: Text(
//                                   '3:02 PM',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 11.sp,
//                                     fontFamily: 'Gilroy-Regular',
//                                     fontWeight: FontWeight.w400,
//                                     height: 0,
//                                   ),
//                                 ),
//                               ),
//                               Divider(
//                                 color: Colors.black,
//                               )
//                             ],
//                           ),
//                         );
//                       }))
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/screens/other_screen/activity_chatt.dart';
import 'package:get/get.dart';

class ChattPage extends StatefulWidget {
  const ChattPage({super.key});

  @override
  State<ChattPage> createState() => _ChattPageState();
}

class _ChattPageState extends State<ChattPage> {
  TextEditingController searchController = TextEditingController();
  List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Chats',
          style: TextStyle(
            color: const Color(0xFF1B1B1B),
            fontSize: 16.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
        child: Column(
          children: [
            Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: const Color(0x26000000),
                    blurRadius: 36.83.h,
                    offset: Offset(0, 14.73.h),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  prefixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search)),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return Dismissible(
                    key: Key(item),
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(ActivityChatt());
                          },
                          child: ListTile(
                            title: Text(
                              'Lorem Ipsum',
                              style: TextStyle(
                                color: const Color(0xFF010101),
                                fontSize: 13.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(Icons.done_all),
                                Text(
                                  'Good bye!',
                                  style: TextStyle(
                                    color: const Color(0xFF3C3C3C),
                                    fontSize: 13.sp,
                                    fontFamily: 'Gilroy-Regular',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 40.h,
                                width: 44.w,
                                color: Colors.grey,
                                child: Image.asset(
                                  "assets/images/active_person.png",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            trailing: Text(
                              '3:02 PM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.sp,
                                fontFamily: 'Gilroy-Regular',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
