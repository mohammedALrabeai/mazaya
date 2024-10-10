import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/offerscategories_item_widget.dart';

class K5Screen extends StatelessWidget {
  K5Screen({Key? key})
      : super(
          key: key,
        );

  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<OfferType> offers = [
    OfferType(
        title: 'التعليم والمراكز التدريبية',
        subTitle: 'نبذة عن المراكز التدريبيةوالمكتبات',
        index: 1,
        routeName: AppRoutes.k6Screen),
    OfferType(
        title: 'الرياضة والعناية والتجميل',
        subTitle: 'الرياضة والعناية والتجميل',
        index: 2,
        routeName: AppRoutes.k6Screen),
    OfferType(
        title: 'السفر والفنادق',
        subTitle: 'نبذه عن السفر والفنادق',
        index: 3,
        routeName: AppRoutes.k6Screen),
    OfferType(
        title: 'المراكز الطبية والصيدليات ',
        subTitle: 'نبذه عن المراكز الطبية والصيدليات',
        index: 4,
        routeName: AppRoutes.k6Screen),
    OfferType(
        title: 'خدمات السيارات والنقل',
        subTitle: 'كل ما يختص في قطاع السيارات',
        index: 5,
        routeName: AppRoutes.k6Screen),
    OfferType(
        title: 'مراكز التسويق والمطاعم',
        subTitle: 'جميع ما يختص مراكز التسوق',
        index: 6,
        routeName: AppRoutes.k6Screen),
  ];

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
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 28.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup286,
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildAppbar(context),
                      ),
                      SizedBox(height: 36.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 34.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "الرئيسية | تصنيفات",
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                                TextSpan(
                                  text: " العروض",
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 50.h),
                        child: Column(
                          children: [
                            Text(
                              "تصنيفات العروض",
                              style: theme.textTheme.headlineLarge,
                            ),
                            SizedBox(height: 26.h),
                            Text(
                              "اختر التصنيف لاستعراض العروض الخاصة به",
                              style: CustomTextStyles.titleMediumOnPrimary_1,
                            ),
                            SizedBox(height: 66.h),
                            _buildOffersCategories(context)
                          ],
                        ),
                      ),
                      SizedBox(height: 18.h)
                    ],
                  ),
                ),
                _buildHorizontalScroll(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
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
    );
  }

  /// Section Widget
  Widget _buildOffersCategories(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 16.h,
        );
      },
      itemCount: offers.length,
      itemBuilder: (context, index) {
        return OfferscategoriesItemWidget(
          offer: offers[index],
          avigateToWhatThere: () {
            // Navigator.pushNamed(context, AppRoutes.k5Screen);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
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
                padding: EdgeInsets.all(12.h),
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
                  padding: EdgeInsets.only(top: 14.h),
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
        ),
      ),
    );
  }

  /// Navigates to the k6Screen when the action is triggered.
  avigateToWhatThere(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k6Screen);
  }
}

class OfferType {
  String title;
  String subTitle;
  String? routeName;
  int? index;
  OfferType(
      {required this.title,
      required this.subTitle,
      this.routeName,
      this.index});
}
