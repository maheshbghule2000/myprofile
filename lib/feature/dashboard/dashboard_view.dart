import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_profile/constant/app_colors.dart';
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
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: AppColors.kRatingIconColor,
      ),
      // Drawer visible only on mobile view
      drawer: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                _menuItem(Icons.home, 'Home'),
                _menuItem(Icons.person, 'Profile'),
                _menuItem(Icons.settings, 'Settings'),
                _menuItem(Icons.logout, 'Logout'),
              ],
            ),
          );
        }
        return SizedBox();
      }),
      body: LayoutBuilder(builder: (context, constraints) {
        bool isWeb = constraints.maxWidth > 600;

        return SingleChildScrollView(
          scrollDirection: isWeb ? Axis.horizontal : Axis.vertical,
          child: isWeb
              ? Row(
                  children: _buildScreenParts(isWeb),
                )
              : Column(
                  children: _buildScreenParts(isWeb),
                ),
        );
      }),
    );
  }

  // Method to build the screen parts
  List<Widget> _buildScreenParts(bool isWeb) {
    return [
      Container(
        width: isWeb ? 300.w : double.infinity,
        height: isWeb ? 300.h : 150.h,
        color: AppColors.kRatingIconColor,
        child: Center(
          child: Text(
            "Part 1",
            style: TextStyle(
              fontSize: isWeb ? 24.sp : 18.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        width: isWeb ? 300.w : double.infinity,
        height: isWeb ? 300.h : 150.h,
        color: AppColors.kConditionalApprovedColor,
        child: Center(
          child: Text(
            "Part 2",
            style: TextStyle(
              fontSize: isWeb ? 24.sp : 18.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
     
    ];
  }

  // Drawer Menu Item Builder
  Widget _menuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Close the drawer after selection
      },
    );
  }
}
