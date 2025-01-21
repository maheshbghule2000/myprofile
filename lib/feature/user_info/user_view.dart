import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/routes/routes.gr.dart';

import '../../constant/app_images.dart';

@RoutePage()
class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
            onTap: () {
              context.router.push(const DashboardRoute());
            },
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                    child: Image.asset(
                  AppImages.growBussness,
                  fit: BoxFit.fitWidth,
                )),
                Text(
                  "login",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )));
  }
}
