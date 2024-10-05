import 'package:flutter/material.dart';
import 'package:mazaya/presentation/k5_screen/k5_screen.dart';
import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class OfferscategoriesItemWidget extends StatelessWidget {
  OfferscategoriesItemWidget({Key? key, this.avigateToWhatThere, this.offer})
      : super(
          key: key,
        );

  VoidCallback? avigateToWhatThere;
  OfferType? offer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, offer?.routeName ?? "", arguments: offer);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 34.h,
          vertical: 10.h,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        avigateToWhatThere?.call();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.h),
                        child: Text(
                          offer?.title ?? "",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      offer?.subTitle ?? "",
                      style: theme.textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.h),
            CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 38.h,
              width: 42.h,
              margin: EdgeInsets.only(top: 6.h),
            )
          ],
        ),
      ),
    );
  }
}
