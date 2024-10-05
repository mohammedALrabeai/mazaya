import 'package:flutter/material.dart';
import 'package:mazaya/presentation/k6_screen/k6_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class K7Screen extends StatelessWidget {
  K7Screen({Key? key})
      : super(
          key: key,
        );
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Offer? offer = ModalRoute.of(context)?.settings.arguments as Offer?;
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
                SizedBox(
                  height: 678.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildDetailsSection(context),
                      _buildOfferDetails(context, offer!),
                    ],
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 46.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        // width: 100.h,
                        child: Text(
                          " ${offer.mail} " +
                              "الموقع الإلكتروني :  " +
                              "\n" +
                              " ${offer.phone} " +
                              " طرق التواصل : ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 16.h,
                          margin: EdgeInsets.only(bottom: 2.h),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgThumbsUp,
                                      height: 8.h,
                                      width: double.maxFinite,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowDownPrimary,
                                      height: 4.h,
                                      width: double.maxFinite,
                                      alignment: Alignment.topRight,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                height: 10.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgBookmark,
                                      height: 8.h,
                                      width: 8.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 2.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 8.h,
                                      width: 8.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 44.h),
                    child: Text(
                      "مرفق ملف تفاصيل الخصومات",
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                _buildCouponSection(context),
                SizedBox(height: 22.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 56.h,
                    right: 60.h,
                  ),
                  child: Column(
                    children: [
                      CustomElevatedButton(
                        width: 152.h,
                        text: "ملف التفاصيل PDF",
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToOrangeTL18Decoration,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 38.h),
                _buildFooterNavigation(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailsSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 28.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup239,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            SizedBox(height: 52.h),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 34.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "التعليم ومراكز التدريب | ",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      TextSpan(
                        text: "تفاصيل العرض",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 52.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 56.h,
                right: 60.h,
              ),
              padding: EdgeInsets.only(left: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "تفاصيل العرض",
                    style: theme.textTheme.headlineLarge,
                  )
                ],
              ),
            ),
            SizedBox(height: 214.h)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOfferDetails(BuildContext context, Offer offer) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 12.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 22.h,
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
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 10.h),
            padding: EdgeInsets.only(right: 22.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: offer.image,
                  height: 98.h,
                  width: 186.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(right: 30.h),
                ),
                SizedBox(height: 46.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${offer.title} العرض ساري\n ",
                        style: CustomTextStyles.titleLargeBlack900Medium,
                      ),
                      TextSpan(
                        text: "من تاريخ ${offer.from}\n ",
                        style: CustomTextStyles.titleLargeLime700,
                      ),
                      TextSpan(
                        text: " الى ",
                        style: CustomTextStyles.titleLargeBlack900Medium,
                      ),
                      TextSpan(
                        text: " ${offer.to}\n",
                        style: CustomTextStyles.titleLargeLime700,
                      ),
                      TextSpan(
                        text: "الفئة المستهدفة\n ",
                        style: CustomTextStyles.titleLargeBlack900Medium,
                      ),
                      TextSpan(
                        text: "${offer.destination} ",
                        style: CustomTextStyles.titleLargeLime700,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          SizedBox(height: 30.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCouponSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 12.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadiusStyle.roundedBorder30,
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
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 10.h),
            child: Column(
              children: [
                Text(
                  "كوبون الخصم  ",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "تقديم خصومات خاصة في جميع خدمات المجمع",
                    style: CustomTextStyles.bodyMediumBlack900,
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
      height: 116.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1772x428,
            height: 72.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              36.h,
            ),
          ),
          CustomIconButton(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.oneScreen);
            },
            height: 68.h,
            width: 94.h,
            padding: EdgeInsets.all(10.h),
            alignment: Alignment.topCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 44.h),
            child: CustomIconButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.k1Screen);
              },
              height: 68.h,
              width: 94.h,
              padding: EdgeInsets.all(8.h),
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
                alignment: Alignment.center,
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
}
