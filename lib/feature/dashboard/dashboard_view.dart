import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_profile/constant/app_images.dart';
import 'package:my_profile/routes/routes.gr.dart';

@RoutePage()
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text(" Dashboard")),
        body: InkWell(
            onTap: () {
              context.router.push(const UserRoute());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    AppImages.profileImage,
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.center,
                  ),
                ),
                // Column(
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.only(left: 10.sp,right: 10.sp),
                //       child: Text("Name"),
                //     ),
                //   ],
                // )
              ],
            )));
  }
}
