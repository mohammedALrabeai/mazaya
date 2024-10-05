import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K2Screen extends StatelessWidget {
  K2Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController lockoneController = TextEditingController();

  TextEditingController locationoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 28.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup154,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildAppBar(context),
                      ),
                      SizedBox(height: 58.h),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: Text(
                          "الرئيسية | تسجيل الدخول",
                          style: CustomTextStyles.bodyMediumOnPrimary_1,
                        ),
                      ),
                      SizedBox(height: 58.h),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: Text(
                          "تسجيل الدخول",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 58.h),
                      _buildLoginForm(context),
                      SizedBox(height: 128.h)
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                _buildBottomNavigation(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(
          left: 42.h,
          top: 11.h,
          bottom: 33.h,
        ),
        child: Column(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgVector,
            ),
            SizedBox(height: 8.h),
            AppbarTitleImage(
              imagePath: ImageConstant.imgVector,
            ),
            SizedBox(height: 8.h),
            AppbarTitleImage(
              imagePath: ImageConstant.imgVector,
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage5,
          margin: EdgeInsets.only(right: 36.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUsernameSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 212.h,
              // right: 10.h,
            ),
            child: Column(
              children: [
                Text(
                  "اسم المستخدم:",
                  style: CustomTextStyles.bodyLargeBlack900,
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: lockoneController,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 18.h, 22.h, 18.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 20.h,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 58.h,
            ),
            contentPadding: EdgeInsets.fromLTRB(12.h, 18.h, 22.h, 18.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 240.h,
              // right: 10.h,
            ),
            child: Column(
              children: [
                Text(
                  "كلمة المرور:",
                  style: CustomTextStyles.bodyLargeBlack900,
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          CustomTextFormField(
            controller: locationoneController,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 18.h, 22.h, 18.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 20.h,
                width: 22.h,
                fit: BoxFit.contain,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 58.h,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.fromLTRB(12.h, 18.h, 22.h, 18.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 36.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadiusStyle.roundedBorder50,
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
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 52.h,
                  right: 8.h,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 58.h,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 2.h),
                              child: Text(
                                "تسجيل الدخول",
                                style: CustomTextStyles.titleMediumPrimary,
                              ),
                            ),
                          ),
                          Text(
                            "* لمشغلي النظام استخدم حساب شبكة الجامعة",
                            style: CustomTextStyles.bodyMediumBlack900,
                            textDirection: TextDirection.rtl,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          _buildUsernameSection(context),
          SizedBox(height: 16.h),
          _buildPasswordSection(context),
          SizedBox(height: 34.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 10.h,
              right: 14.h,
            ),
            padding: EdgeInsets.symmetric(horizontal: 56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomElevatedButton(
                  height: 50.h,
                  text: "تسجيل الدخول",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPrimaryToOrangeTL24Decoration,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      height: 96.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2252x428,
            height: 52.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              26.h,
            ),
          ),
          CustomIconButton(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.oneScreen);
            },
            height: 68.h,
            width: 94.h,
            padding: EdgeInsets.all(12.h),
            alignment: Alignment.topCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 58.h),
            child: CustomIconButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.k1Screen);
              },
              height: 68.h,
              width: 94.h,
              padding: EdgeInsets.all(6.h),
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgPhone,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 68.h,
              width: 94.h,
              margin: EdgeInsets.only(left: 58.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                borderRadius: BorderRadiusStyle.circleBorder34,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 38.h,
                    width: 38.h,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
