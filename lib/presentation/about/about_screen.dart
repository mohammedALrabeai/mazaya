import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key? key})
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
                Container(
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
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.aboutScreen);
                  },
                  child: Container(
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
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.creatOfferScreen);
                  },
                  child: Container(
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
                ),
                SizedBox(height: 96.h)
              ],
            ),
          ),
        ),
        body: SizedBox(
          // width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHorizontalScroll(context),
                _buildHorizontalScroll1(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: 980.h,
        padding: EdgeInsets.only(right: 0.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup155,
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 422.h,
              width: 610.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 38.h,
                      right: 38.h,
                      bottom: 14.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 74.h),
                          child: Text(
                            "حول تطبيق مزايا",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        SizedBox(
                          width: 330.h,
                          child: Text(
                            "تقدم جامعة الطائف ممثلة بوحدة الشراكات الاستراتيجية والمبادرات تطبيق مزايا وهي منصة تعرض العديد من العروض والخصومات في مجالات متنوعة التي يمكن الاستفادة منها لمنسوبي الجامعة من (أعضاء هيئة تدريس. موظفين. طلبة). وكذلك الترحيب بالجهات الراغبة في تسويق منتجاتها لدى الجامعة بعد إكمال الإجراءات النظامية اللازمة.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleMediumOnPrimary_1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 28.h),
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //     ImageConstant.imgGroup219,
                          //   ),
                          //   fit: BoxFit.fill,
                          // ),
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
                                margin: EdgeInsets.only(right: 11.h),
                              )
                            ],
                          ),
                          // SizedBox(height: 22.h),
                          // Container(
                          //   width: 132.h,
                          //   margin: EdgeInsets.only(right: 38.h),
                          //   child: Text(
                          //     "الرئيسية\nحول مزايا\nالأسئلة الشائعة\nتقديم عرض\nتسجيل الدخول",
                          //     maxLines: 7,
                          //     overflow: TextOverflow.ellipsis,
                          //     textAlign: TextAlign.right,
                          //     style: CustomTextStyles.titleLargeRegular,
                          //   ),
                          // ),
                          // SizedBox(height: 96.h)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 144.h),
            CustomElevatedButton(
              height: 78.h,
              width: 326.h,
              text: "رجوع",
              margin: EdgeInsets.only(right: 38.h),
              rightIcon: Container(
                margin: EdgeInsets.only(left: 6.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowleft,
                  height: 40.h,
                  width: 50.h,
                  fit: BoxFit.contain,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              buttonTextStyle: CustomTextStyles.headlineLargeBlack900,
            ),
            SizedBox(height: 30.h),
            SizedBox(height: 226.h)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll1(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: 146.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 102.h,
              width: 456.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  50.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [theme.colorScheme.primary, appTheme.orange300],
                ),
              ),
            ),
            CustomIconButton(
              height: 68.h,
              width: 94.h,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.oneScreen);
              },
              padding: EdgeInsets.all(14.h),
              decoration: IconButtonStyleHelper.fillOnPrimary,
              alignment: Alignment.topCenter,
              child: CustomImageView(
                imagePath: ImageConstant.imgHome,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 72.h),
              child: CustomIconButton(
                height: 68.h,
                width: 94.h,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.k1Screen);
                },
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
                margin: EdgeInsets.only(left: 72.h),
                padding: EdgeInsets.only(left: 24.h),
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
                  alignment: Alignment.centerLeft,
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
      ),
    );
  }
}
