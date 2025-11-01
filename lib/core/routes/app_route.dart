

import 'package:flutter/material.dart';
import 'package:taskati/core/routes/routes.dart';
import 'package:taskati/feature/auth/presentation/auth_screen.dart';
import 'package:taskati/feature/splash/presentation/splash_screen.dart';

class AppRoute {




static Route<dynamic>? route(RouteSettings setting){

switch(setting.name){

   case Routes.splashScreen:
   return MaterialPageRoute(builder: (_)=>SplashScreen());
   case Routes.authScreen:
   return MaterialPageRoute(builder: (_)=>AuthScreen());
}
}

}




