import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class K0Screen extends StatelessWidget {
  K0Screen({Key? key})
      : super(
          key: key,
        );
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        drawer: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 28.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup219,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomAppBar(
                  title: Padding(
                    padding: EdgeInsets.only(
                      left: 42.h,
                      top: 11.h,
                      bottom: 33.h,
                    ),
                    child: InkWell(
                      onTap: () {
                        if (scaffoldKey.currentState!.isDrawerOpen)
                          scaffoldKey.currentState?.closeDrawer();
                        else
                          scaffoldKey.currentState?.openDrawer();
                      },
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
                  ),
                  actions: [
                    AppbarTrailingImage(
                      imagePath: ImageConstant.imgImage5,
                      margin: EdgeInsets.only(right: 36.h),
                    )
                  ],
                ),
                SizedBox(height: 22.h),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.oneScreen);
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.oneScreen);
                    },
                    child: Container(
                      width: 132.h,
                      margin: EdgeInsets.only(right: 38.h),
                      child: Text(
                        "الرئيسية",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 132.h,
                  margin: EdgeInsets.only(right: 38.h),
                  child: Text(
                    "حول مزايا",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.k0Screen);
                  },
                  child: Container(
                    width: 400.h,
                    margin: EdgeInsets.only(right: 38.h),
                    child: Text(
                      "الأسئلة الشائعة",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles.titleLargeRegular,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.k2Screen);
                  },
                  child: Container(
                    width: 132.h,
                    margin: EdgeInsets.only(right: 38.h),
                    child: Text(
                      "تسجيل الدخول",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles.titleLargeRegular,
                    ),
                  ),
                ),
                Container(
                  width: 132.h,
                  margin: EdgeInsets.only(right: 38.h),
                  child: Text(
                    "تقديم عرض",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
                SizedBox(height: 96.h)
              ],
            ),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTargetAudienceSection(context),
                SizedBox(height: 14.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 68.h,
                    right: 60.h,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "الفئة المستفيدة هي منسوبي الجامعة (موظفين - أعضاء هيئة التدريس - الطلاب)",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 46.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [theme.colorScheme.primary, appTheme.orange300],
                    ),
                  ),
                  child: Text(
                    "ما هو دور منصة مزايا؟",
                    textAlign: TextAlign.right,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 46.h),
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [theme.colorScheme.primary, appTheme.orange300],
                    ),
                  ),
                  child: Text(
                    "كيف يمكن لطلاب ومنسوبي الجامعة الاستفادة من العروض؟",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  height: 36.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 46.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle28,
                        height: 36.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          18.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: Text(
                            "كيف يتم معرفة العروض المتاحة؟",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 18.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 56.h,
                    right: 60.h,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: 86.h,
                        width: 96.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 70.h),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        "لم تجد إجابتك؟",
                        style: CustomTextStyles.headlineLargeBlack900Medium,
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "تريد الإجابة على جميع استفساراتك. \nتواصل معنا وسيتم الرد في أقرب وقت ممكن.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                      Text(
                        "ملف التفاصيل PDF",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 12.h),
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.k1Screen);
                        },
                        width: 102.h,
                        text: "راسلنا",
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToOrangeDecoration,
                        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 46.h),
                _buildFooterNavigation(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTargetAudienceSection(BuildContext context) {
    return SizedBox(
      height: 448.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 28.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup221,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAppBar(
                    title: InkWell(
                      onTap: () {
                        if (scaffoldKey.currentState!.isDrawerOpen)
                          scaffoldKey.currentState?.closeDrawer();
                        else
                          scaffoldKey.currentState?.openDrawer();
                      },
                      child: Padding(
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
                    ),
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgImage5,
                        margin: EdgeInsets.only(right: 36.h),
                      )
                    ],
                  ),
                  SizedBox(height: 48.h),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(right: 34.h),
                      child: Text(
                        "الرئيسية | الأسئلة الشائعة",
                        style: CustomTextStyles.bodyMediumOnPrimary_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 48.h),
                  Padding(
                    padding: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "الأسئلة الشائعة",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 128.h)
                ],
              ),
            ),
          ),
          Container(
            height: 36.h,
            padding: EdgeInsets.symmetric(horizontal: 44.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle28,
                  height: 36.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.h),
                    child: Text(
                      "من هي الفئة المستهدفة؟",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFooterNavigation(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle17,
            height: 46.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          CustomIconButton(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.oneScreen);
            },
            height: 68.h,
            width: 94.h,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            alignment: Alignment.topCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 60.h),
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
              margin: EdgeInsets.only(left: 56.h),
              padding: EdgeInsets.only(right: 24.h),
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
                alignment: Alignment.centerRight,
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

  /// Navigates to the towScreen when the action is triggered.
  navigationToOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.towScreen);
  }
}
