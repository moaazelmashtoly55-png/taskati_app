import 'package:flutter/material.dart';
import 'package:taskati/core/routes/app_route.dart';
import 'package:taskati/core/routes/routes.dart';
import 'package:taskati/feature/auth/presentation/auth_screen.dart';
import 'package:taskati/feature/splash/presentation/splash_screen.dart';

class TaskatiApp extends StatelessWidget {
  const TaskatiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoute.route,
      initialRoute: Routes.splashScreen,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}