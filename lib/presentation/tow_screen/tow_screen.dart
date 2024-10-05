import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class TowScreen extends StatelessWidget {
  const TowScreen({Key? key})
      : super(
          key: key,
        );

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
                        ImageConstant.imgGroup153,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildAppBar(context),
                      ),
                      SizedBox(height: 86.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          left: 56.h,
                          right: 60.h,
                        ),
                        padding: EdgeInsets.only(right: 54.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "تطبيق مزايا",
                              style: theme.textTheme.headlineLarge,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 18.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "تقدم جامعة الطائف ممثلة بوحدة الشراكات الاستراتيجية والمبادرات تطبيق مزايا وهو تطبيق يعرض العديد من العروض والخصومات في مجالات متنوعة التي يمكن الاستفادة منها لمنسوبي الجامعة من (أعضاء هيئة تدريس. موظفين. طلبة). وكذلك الترحيب بالجهات الراغبة في تسويق منتجاتها لدى الجامعة بعد إكمال الإجراءات النظامية اللازمة.",
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.titleMediumOnPrimary_2.copyWith(
                            height: 1.33,
                          ),
                        ),
                      ),
                      SizedBox(height: 122.h),
                      CustomElevatedButton(
                        height: 78.h,
                        text: "تصنيفات العروض",
                        margin: EdgeInsets.only(
                          left: 60.h,
                          right: 40.h,
                        ),
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowleft,
                            height: 40.h,
                            width: 50.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.headlineLargeBlack900,
                        onPressed: () {},
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        margin: EdgeInsets.only(
                          left: 56.h,
                          right: 42.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 26.h,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadiusStyle.roundedBorder38,
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
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 14.h),
                                child: Text(
                                  "أحدث العــــروض",
                                  style: CustomTextStyles.headlineLargeBlack900,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowleft,
                              height: 40.h,
                              width: 50.h,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 180.h)
                    ],
                  ),
                ),
                SizedBox(height: 28.h),
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
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      height: 94.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1750x428,
            height: 50.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          CustomIconButton(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.oneScreen);
            },
            height: 68.h,
            width: 94.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            alignment: Alignment.topCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 64.h),
            child: CustomIconButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.k1Screen);
              },
              height: 68.h,
              width: 94.h,
              padding: EdgeInsets.all(4.h),
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
              margin: EdgeInsets.only(left: 52.h),
              padding: EdgeInsets.only(top: 10.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                borderRadius: BorderRadiusStyle.circleBorder34,
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
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 32.h,
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

  /// Navigates to the k5Screen when the action is triggered.
  avigateToWhatNew(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k5Screen);
  }

  /// Navigates to the k8Screen when the action is triggered.
  navigateTowhatThere(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k8Screen);
  }
}
