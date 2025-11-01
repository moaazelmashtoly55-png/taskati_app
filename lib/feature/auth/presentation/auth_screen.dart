





import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati/core/themes/color/app_color.dart';
import 'package:taskati/core/widgets/custom_bottom.dart';
import 'package:taskati/core/widgets/text_form_field.dart';
import 'package:taskati/feature/auth/presentation/home_screen.dart';
import 'package:taskati/gen/assets.gen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
   final ImagePicker picker = ImagePicker();
   XFile? photo;
   var nameController=TextEditingController();
    
   openCamera()async{
     photo = await picker.pickImage(source: ImageSource.camera);
     setState(() {
       
     });
    }
    
   openGallery()async{
     photo = await picker.pickImage(source: ImageSource.gallery);
     setState(() {
       
     });
   }
   @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: photo !=null,
                    child:CircleAvatar(
                    radius: 100,
                    backgroundImage: Image.file(File(photo?.path??"")).image, ),
                    
                    replacement: 
                  Image.asset(Assets.images.user1.path,width: 200,height: 200,),
                  
                  ),
                  SizedBox(height: 20,),
                  CustomBottom(title: "Upload Form Camera",
                  onTap: openCamera,
                  ),
                  SizedBox(height: 20,),
                  CustomBottom(title: "Upload Form Gallery",
                  onTap: openGallery,),
                  SizedBox(height: 20,),
                  Divider(height: 30,color: AppColor.blue,),
                  SizedBox(height: 20,),
                  TextFormFieldAuth(title:  "Enter Your Name",),
                  SizedBox(height: 25,),
                  CustomBottom(
                    onTap: () {
                       Navigator.push(
                                     context,
                                            MaterialPageRoute(builder: (context) => HomeScreen() ),
                          );

                    }
                    ,title: "Done",)
                  
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}