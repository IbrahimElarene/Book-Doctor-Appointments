// main_development.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(FlavorWrapper(flavor: 'Development'));
}

class FlavorWrapper extends StatelessWidget {
  final String flavor;

  const FlavorWrapper({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return DocApp(
      appRouter: AppRouter(),
      flavor: flavor,
    );
  }
}
