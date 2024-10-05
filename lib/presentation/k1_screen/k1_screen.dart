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
class K1Screen extends StatelessWidget {
  K1Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailInputController = TextEditingController();

  TextEditingController nameInputController = TextEditingController();

  TextEditingController emailInput1Controller = TextEditingController();

  TextEditingController messageSubjectInputController = TextEditingController();

  TextEditingController messageBodyInputController = TextEditingController();
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
            Navigator.pushNamed(context, AppRoutes.k0Screen);
          },child:
                Container(
                  width: 132.h,
                  margin: EdgeInsets.only(right: 38.h),
                  child: Text(
                    "تسجيل الدخول",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                )),
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
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 26.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup229,
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
                      SizedBox(height: 50.h),
                      Padding(
                        padding: EdgeInsets.only(right: 36.h),
                        child: Text(
                          " الرئيسية | تواصل معنا",
                          style: CustomTextStyles.bodyMediumOnPrimary_1,
                        ),
                      ),
                      SizedBox(height: 22.h),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "اتصل بنا\n",
                                style: theme.textTheme.headlineSmall,
                              ),
                              TextSpan(
                                text: "نسعد بالإجابة على استفساراتكم",
                                style: CustomTextStyles.bodyLargeOnPrimary_1,
                              )
                            ],
                          ),
                          textAlign: TextAlign.right,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 36.h),
                      Padding(
                        padding: EdgeInsets.only(right: 36.h),
                        child: Text(
                          "البريد الالكتروني",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(right: 40.h),
                        child: Text(
                          "mazaya@tu.edu.sa.com",
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      Padding(
                        padding: EdgeInsets.only(right: 36.h),
                        child: Text(
                          "تواصل معنا",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 26.h),
                      _buildContactForm(context)
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
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
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 36.h),
      child: CustomTextFormField(
        width: 120.h,
        controller: emailInputController,
        hintText: "البريد الإلكتروني",
        suffix: Container(
          margin: EdgeInsets.only(
            left: 6.h,
            top: 6.h,
            bottom: 6.h,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgComputer,
            height: 10.h,
            width: 12.h,
            fit: BoxFit.contain,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 22.h,
        ),
        contentPadding: EdgeInsets.only(
          left: 12.h,
          top: 6.h,
          bottom: 6.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: nameInputController,
      hintText: "الاسم",
      hintStyle: CustomTextStyles.bodyMediumBlack900,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput1(BuildContext context) {
    return CustomTextFormField(
      controller: emailInput1Controller,
      hintText: "البريد الإلكتروني",
      hintStyle: CustomTextStyles.bodyMediumBlack900,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageSubjectInput(BuildContext context) {
    return CustomTextFormField(
      controller: messageSubjectInputController,
      hintText: "عنوان الرسالة",
      hintStyle: CustomTextStyles.bodyMediumBlack900,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageBodyInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: messageBodyInputController,
        hintText: "الرسالة",
        hintStyle: CustomTextStyles.titleLargeBlack900Regular,
        textInputAction: TextInputAction.done,
        maxLines: 4,
        contentPadding: EdgeInsets.all(12.h),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL18,
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMessageButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.h,
      width: 152.h,
      text: "أرسل الرسالة",
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToOrangeTL22Decoration,
      buttonTextStyle: CustomTextStyles.titleLargeRegular,
    );
  }

  /// Section Widget
  Widget _buildContactForm(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 38.h,
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
            margin: EdgeInsets.only(
              left: 8.h,
              right: 12.h,
            ),
            child: Column(
              children: [
                _buildNameInput(context),
                SizedBox(height: 12.h),
                _buildEmailInput1(context),
                SizedBox(height: 12.h),
                _buildMessageSubjectInput(context)
              ],
            ),
          ),
          SizedBox(height: 20.h),
          _buildMessageBodyInput(context),
          SizedBox(height: 20.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 20.h,
            ),
            child: Column(
              children: [_buildSendMessageButton(context)],
            ),
          ),
          SizedBox(height: 12.h)
        ],
      ),
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
            imagePath: ImageConstant.imgRectangle22,
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
              decoration: IconButtonStyleHelper.fillOnPrimary,
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
