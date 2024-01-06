import 'package:flutter/material.dart';
import 'package:namya_s_application/core/app_export.dart';
import 'package:namya_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:namya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:namya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:namya_s_application/widgets/custom_outlined_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              _buildProductList(context),
              SizedBox(height: 24.v),
              Text(
                "Add more items",
                style: TextStyle(
                  color: appTheme.black900.withOpacity(0.34),
                  fontSize: 11.fSize,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(
                flex: 79,
              ),
              CustomOutlinedButton(
                width: 131.h,
                text: "Checkout",
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 7.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 11.v,
                    width: 14.h,
                  ),
                ),
              ),
              Spacer(
                flex: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 22.v,
          bottom: 22.v,
        ),
      ),
      title: AppbarTitle(
        text: "Cart",
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLeonardoDiffus,
            height: 62.v,
            width: 36.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Taaza Milk ",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 14.fSize,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "500 ml",
                  style: TextStyle(
                    color: appTheme.black900.withOpacity(0.34),
                    fontSize: 11.fSize,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "₹100 ",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 13.fSize,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 17.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGreen70019.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "+",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 16.fSize,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "02",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 14.fSize,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: Text(
                      "-",
                      style: TextStyle(
                        color: appTheme.black900,
                        fontSize: 16.fSize,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
