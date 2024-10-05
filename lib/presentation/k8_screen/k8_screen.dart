import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/slidersection_item_widget.dart';

// ignore_for_file: must_be_immutable
class K8Screen extends StatelessWidget {
  K8Screen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;
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
            child: Container(
              height: 1090.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildHorizontalScroll(context),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSliderSection(context),
                      SizedBox(height: 22.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 56.h,
                              right: 60.h,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomIconButton(
                                      height: 44.h,
                                      width: 44.h,
                                      padding: EdgeInsets.all(6.h),
                                      decoration: IconButtonStyleHelper
                                          .gradientPrimaryToOrange,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowDown,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: CustomIconButton(
                                        height: 44.h,
                                        width: 42.h,
                                        padding: EdgeInsets.all(6.h),
                                        decoration: IconButtonStyleHelper
                                            .gradientPrimaryToOrange,
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowLeftOnprimary,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 62.h),
                      _buildHorizontalScroll1(context)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IntrinsicWidth(
        child: Container(
          // width: 828.h,
          padding: EdgeInsets.symmetric(vertical: 28.h),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup113,
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 6.h),
              SizedBox(
                width: double.maxFinite,
                child: _buildAppBar(context),
              ),
              // CustomAppBar(
              //   title: Padding(
              //     padding: EdgeInsets.only(
              //       left: 258.h,
              //       top: 11.h,
              //       bottom: 33.h,
              //     ),
              //     child: Column(
              //       children: [
              //         AppbarTitleImage(
              //           imagePath: ImageConstant.imgVector,
              //         ),
              //         SizedBox(height: 8.h),
              //         AppbarTitleImage(
              //           imagePath: ImageConstant.imgVector,
              //         ),
              //         SizedBox(height: 8.h),
              //         AppbarTitleImage(
              //           imagePath: ImageConstant.imgVector,
              //         )
              //       ],
              //     ),
              //   ),
              //   actions: [
              //     AppbarTrailingImage(
              //       imagePath: ImageConstant.imgImage5,
              //       margin: EdgeInsets.only(right: 219.h),
              //     )
              //   ],
              // ),
              SizedBox(height: 52.h),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 226.h),
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
                // alignment: Alignment.center,
                // margin: EdgeInsets.only(
                //   // left: 272.h,
                //   right: 50.h,
                // ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "أحدث العروض",
                        style: CustomTextStyles.displaySmallOnPrimary,
                      ),
                    ),
                    SizedBox(
                      width: 134.h,
                      child: Divider(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 368.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderSection(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 550.h,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        // enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          sliderIndex = index;
        },
      ),
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return SlidersectionItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll1(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Container(
          height: 112.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1768x456,
                height: 68.h,
                width: double.maxFinite,
                radius: BorderRadius.circular(
                  34.h,
                ),
              ),
              CustomIconButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.oneScreen);
                },
                height: 68.h,
                width: 94.h,
                padding: EdgeInsets.all(14.h),
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
                  padding: EdgeInsets.only(right: 26.h),
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
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(
          left: 35.h,
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
    );
  }
}
