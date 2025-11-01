




import 'package:flutter/material.dart';
import 'package:taskati/core/routes/routes.dart';
import 'package:taskati/core/themes/color/app_color.dart';
import 'package:taskati/feature/auth/presentation/auth_screen.dart';
import 'package:taskati/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }
  navigateToNextScreen(){
    Future.delayed(Duration(seconds: 3  ),(){

      Navigator.pushNamedAndRemoveUntil(context, Routes.authScreen, (e)=>false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: 
         Center(
           child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Center(child: Image.asset(Assets.images.group1.path,width: 220,height: 220,)),
                Text("Taskati",style: TextStyle(fontSize: 30),),
                SizedBox(height: 20,),
                Text("It’s Time To Get Organized",style: TextStyle(fontSize: 15,color:AppColor.gray),)
              ],
            ),
         ),
        
      ),
    );
  }
}