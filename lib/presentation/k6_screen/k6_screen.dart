import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../k5_screen/k5_screen.dart';
import 'widgets/trainingcentersgrid_item_widget.dart';

class K6Screen extends StatelessWidget {
  K6Screen({Key? key})
      : super(
          key: key,
        );

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final OfferType? offer =
        ModalRoute.of(context)?.settings.arguments as OfferType?;

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
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup241,
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
                      SizedBox(height: 40.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 32.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "الرئيسية | تصنيفات",
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                                TextSpan(
                                  text: " العروض | ${offer?.title}",
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 56.h),
                      Text(
                        offer?.title ?? "",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 28.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          left: 56.h,
                          right: 60.h,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "جميع العروض والخصومات",
                              style: CustomTextStyles.titleMediumOnPrimary_1,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      _buildTrainingCentersGrid(context, offer)
                    ],
                  ),
                ),
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

  /// Section Widget
  Widget _buildTrainingCentersGrid(BuildContext context, OfferType? offer) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: (getItems(offer).isEmpty)
          ? SizedBox(
              height: 400,
            )
          : ResponsiveGridListBuilder(
              minItemWidth: 1,
              minItemsPerRow: 2,
              maxItemsPerRow: 2,
              horizontalGridSpacing: 8.h,
              verticalGridSpacing: 8.h,
              builder: (context, items) => ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: items,
              ),
              gridItems: List.generate(
                getItems(offer).length,
                (index) {
                  final item = getItems(offer)[index];
                  return TrainingcentersgridItemWidget(item);
                },
              ),
            ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
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
                padding: EdgeInsets.all(10.h),
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
                  padding: EdgeInsets.only(top: 12.h),
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

  List<Offer> getItems(OfferType? offer) {
    switch (offer?.index!) {
      case 1:
        return [
          Offer(
            title: "مدارس تربية الابناء الاهلية",
            subtitle: "مدارس تربية الابناء الاهلية",
            image: ImageConstant.imgRectangle2246x146,
            description:
                "كوبون الخصم \n تقديم خصومات خاصة في جميع خدمات المجمع",
            from: "01-01-2023",
            to: "31-12-2023",
            destination: "جميع منسوبي الجامعة",
            mail: "jVY2P@example.com",
            phone: "0123456789",
          ),
          Offer(
            title: "معهد المصفوفة الفضية العالي للتدريب النسائي",
            subtitle: "تقديم دورات",
            image: ImageConstant.imgRectangle2246x140,
            description:
                "كوبون الخصم \n تقديم خصومات خاصة في جميع خدمات المجمع",
            from: "02-02-2023",
            to: "31-12-2023",
            destination: "جميع منسوبي الجامعة",
            mail: "hfhf@example.com",
            phone: "6576788",
          ),
          Offer(
            title: "معهد وول استريت انجلش (كونسلتكس المتحدة للتدريب)",
            subtitle: "15%",
            image: ImageConstant.imgRectangle221,
            description:
                "كوبون الخصم \n تقديم خصومات خاصة في جميع خدمات المجمع",
            from: "02-02-2023",
            to: "31-12-2023",
            destination: "جميع منسوبي الجامعة",
            mail: "hfhf@example.com",
            phone: "6576788",
          ),
          Offer(
            title: "معهد الخوارزمي",
            subtitle: "المواصلات السريعة",
            image: ImageConstant.imgRectangle2298x186,
            description:
                "كوبون الخصم \n تقديم خصومات خاصة في جميع خدمات المجمع",
            from: "02-02-2023",
            to: "31-12-2023",
            destination: "جميع منسوبي الجامعة",
            mail: "hfhf@example.com",
            phone: "6576788",
          ),
          Offer(
            title: "مركر ومعهد بواسق للتدريب ",
            subtitle: "حسب الملف المرفق",
            image: ImageConstant.imgRectangle222,
            description:
                "كوبون الخصم \n تقديم خصومات خاصة في جميع خدمات المجمع",
            from: "02-02-2023",
            to: "31-12-2023",
            destination: "جميع منسوبي الجامعة",
            mail: "hfhf@example.com",
            phone: "6576788",
          ),
          Offer(
            title: "معهد الدراسات الحديثة",
            subtitle: "60%",
            image: ImageConstant.imgRectangle2248x144,
            description:
                "كوبون الخصم \n تقديم خصومات خاصة في جميع خدمات المجمع",
            from: "02-02-2023",
            to: "31-12-2023",
            destination: "جميع منسوبي الجامعة",
            mail: "hfhf@example.com",
            phone: "6576788",
          ),
        ];

      default:
        return [];
    }
  }
}

class Offer {
  String? title;
  String? subtitle;
  String? image;
  String? description;
  String? from;
  String? to;
  String? destination;
  String? mail;
  String? phone;
  String? pdfFile;

  Offer({
    this.title,
    this.subtitle,
    this.image,
    this.description,
    this.from,
    this.to,
    this.destination,
    this.mail,
    this.phone,
    this.pdfFile,
  });
}
