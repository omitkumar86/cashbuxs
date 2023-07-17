import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_color_resources.dart';
import '../../utils/app_style.dart';

class CustomDeclineAndAcceptButton extends StatelessWidget {
  CustomDeclineAndAcceptButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
  });

  VoidCallback? onTap;
  String? title;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 120.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
            color:  color??AppColorResources.declineButtonColor),
        child: Text('$title', style: myStyleRoboto(20.sp, AppColorResources.primaryWhite, FontWeight.w400),),
      ),
    );
  }
}
