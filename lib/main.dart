import 'package:flutter/material.dart';
import 'package:runway/config/routes/app_route.dart';
import 'package:runway/config/theme/app_theme.dart';

void main() {
  runApp(const RunWayApp());
}

class RunWayApp extends StatelessWidget {
  const RunWayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      onGenerateRoute: AppRoute.onGenerateAppRoute,
    );
  }
}
