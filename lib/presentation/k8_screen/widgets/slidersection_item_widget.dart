import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SlidersectionItemWidget extends StatelessWidget {
  const SlidersectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.h,
      padding: EdgeInsets.symmetric(vertical: 38.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadiusStyle.roundedBorder80,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23,
            height: 158.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 54.h,
              right: 42.h,
            ),
          ),
          SizedBox(height: 50.h),
          Text(
            "مجمع لمسة الطبي",
            textAlign: TextAlign.center,
            style: theme.textTheme.displaySmall,
          ),
          SizedBox(height: 64.h),
          Text(
            "%25",
            textAlign: TextAlign.center,
            style: CustomTextStyles.headlineLargeBlack900_2,
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 56.h,
            // width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50.h,
                  width: 194.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      24.h,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [theme.colorScheme.primary, appTheme.orange300],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "قراءة المزيد",
                    textAlign: TextAlign.right,
                    style: theme.textTheme.titleLarge,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
