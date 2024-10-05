import 'package:flutter/material.dart';
import 'package:mazaya/presentation/k6_screen/k6_screen.dart';
import '../../../core/app_export.dart';

class TrainingcentersgridItemWidget extends StatelessWidget {
  const TrainingcentersgridItemWidget(this.item, {Key? key})
      : super(
          key: key,
        );
  final Offer item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.k7Screen, arguments: item);
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 20.h,
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
            CustomImageView(
              imagePath: item.image ?? "",
              height: 46.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(
                22.h,
              ),
              margin: EdgeInsets.symmetric(horizontal: 6.h),
            ),
            SizedBox(height: 22.h),
            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Text(
                    item.title ?? "",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    item.subtitle ?? "",
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
            SizedBox(height: 28.h)
          ],
        ),
      ),
    );
  }
}
