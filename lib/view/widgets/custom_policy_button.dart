import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_color_resources.dart';
import '../../utils/app_style.dart';

class CustomPolicyButton extends StatelessWidget {
 CustomPolicyButton({
    super.key,
   required this.onTap,
   required this.title,
  });

 VoidCallback onTap;
 String? title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.w, color: AppColorResources.borderColor)),
        child:  Text('$title', style: myStyleRoboto(18.sp, AppColorResources.primaryWhite, FontWeight.w400),),
      ),
    );
  }
}
