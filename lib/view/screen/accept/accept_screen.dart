import 'package:cashbuxs/utils/app_color_resources.dart';
import 'package:cashbuxs/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_style.dart';
import '../../widgets/custom_decline_and_accept_button.dart';
import '../../widgets/custom_policy_button.dart';

class AcceptScreen extends StatelessWidget {
  static const String routeName = '/accept_screen';
  const AcceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.20.w, top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/app_logo.png',
                  height: 75.h,
                  width: 75.w,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Review our Data Collection Policies',
                  style: myStyleRoboto(16.sp,
                      AppColorResources.highLightHeaderColor, FontWeight.w700),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  AppConstants.acceptPolicy,
                  style: myStyleRoboto(
                      16.sp, AppColorResources.secondaryWhite, FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  AppConstants.acceptPolicySecond,
                  style: myStyleRoboto(
                      16.sp, AppColorResources.secondaryWhite, FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomPolicyButton(
                  onTap: () {},
                  title: 'View Privacy Policy',
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomPolicyButton(
                  onTap: () {},
                  title: 'View Terms of Service',
                ),
                SizedBox(
                  height: 25.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'By clicking accept you are agree to our ',
                    style: myStyleRoboto(16.sp,
                        AppColorResources.secondaryWhite, FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'terms ',
                        style: myStyleRoboto(16.sp,
                            AppColorResources.primaryYellow, FontWeight.w400),
                      ),
                      TextSpan(
                        text: '&',
                        style: myStyleRoboto(16.sp,
                            AppColorResources.secondaryWhite, FontWeight.w400),
                      ),
                      TextSpan(
                        text: ' services',
                        style: myStyleRoboto(
                            16.sp,
                            AppColorResources.acceptButtonColor,
                            FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        color: AppColorResources.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomDeclineAndAcceptButton(
              onTap: () {},
              title: 'Decline',
            ),
            CustomDeclineAndAcceptButton(
              onTap: () {},
              title: 'Accept',
              color: AppColorResources.acceptButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
