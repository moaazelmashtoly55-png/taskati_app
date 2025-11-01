



import 'package:flutter/material.dart';
import 'package:taskati/core/themes/color/app_color.dart';
import 'package:taskati/core/themes/color/app_color.dart';

class CustomBottom extends StatelessWidget {

  final String title;
  void Function()? onTap;
 CustomBottom({super.key, required this.title,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
         
          gradient: LinearGradient(colors: [
           Colors.deepPurple.withValues(alpha: 0.6),
           AppColor.blue,
          ],
          begin: Alignment.topCenter,end: Alignment.bottomCenter
          )
        ),
        
        child: Text(title,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white),),
      ),
    );  
  }
}