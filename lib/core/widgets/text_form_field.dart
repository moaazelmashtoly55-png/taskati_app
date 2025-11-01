






import 'package:flutter/material.dart';
import 'package:taskati/core/themes/color/app_color.dart';

class TextFormFieldAuth extends StatelessWidget {
  final int? maxLength;
  final String title;
  var nameController=TextEditingController();
   TextFormFieldAuth({super.key,  this.maxLength=1, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // controller:nameController,
     // maxLength: maxLength,
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      decoration:InputDecoration(
        hintText:title, hintStyle: TextStyle(color: AppColor.gray, fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.blue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
                ),
                );
  }
}