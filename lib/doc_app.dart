import 'package:doctors_appointments/core/routing/app_router.dart';
import 'package:doctors_appointments/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctors Appointments',
        theme: ThemeData(primaryColor: ColorsManager.mainBlue,scaffoldBackgroundColor: ColorsManager.mainWhite),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,

      ),
    );
  }
}
