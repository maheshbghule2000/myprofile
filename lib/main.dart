import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_profile/utils/theme.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Easy Grow Business',
        theme: AppTheme.lightTheme,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
