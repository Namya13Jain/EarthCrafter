import '../home_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:namya_s_application/core/app_export.dart';
import 'package:namya_s_application/widgets/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 29.h,
                      bottom: 12.v,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 304.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Your Gateway to ",
                                  style: theme.textTheme.displaySmall,
                                ),
                                TextSpan(
                                  text: "Green",
                                  style: CustomTextStyles
                                      .displaySmallSecondaryContainer,
                                ),
                                TextSpan(
                                  text: " Living",
                                  style: theme.textTheme.displaySmall,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          width: 307.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Seamless",
                                  style: CustomTextStyles.bodyLargeBlack90018,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "doorstep collection",
                                  style: CustomTextStyles.bodyLargePrimary,
                                ),
                                TextSpan(
                                  text: " services and a",
                                  style: CustomTextStyles.bodyLargeBlack90018,
                                ),
                                TextSpan(
                                  text: " green marketplace",
                                  style: CustomTextStyles.bodyLargePrimary,
                                ),
                                TextSpan(
                                  text: " await, making ",
                                  style: CustomTextStyles.bodyLargeBlack90018,
                                ),
                                TextSpan(
                                  text: "sustainability a way of life",
                                  style: CustomTextStyles.bodyLargePrimary,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildBookAPickupButton(context),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 46.v,
                            width: 246.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowright,
                                  height: 11.v,
                                  width: 14.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 78.h,
                                    bottom: 1.v,
                                  ),
                                ),
                                _buildExploreOurMarketplaceButton(context),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 50.v),
                        _buildUserProfileColumn(context),
                        SizedBox(height: 43.v),
                        _buildSeventyColumn(context),
                        SizedBox(height: 44.v),
                        _buildBookAPickupButton2(context),
                        SizedBox(height: 12.v),
                        _buildExploreOurMarketplaceButton2(context),
                        SizedBox(height: 9.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowright,
                          height: 11.v,
                          width: 14.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 79.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookAPickupButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 175.h,
      text: "Book a pickup",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 11.v,
          width: 14.h,
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildExploreOurMarketplaceButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 246.h,
      text: "Explore our marketplace",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowrightPrimary,
          height: 11.v,
          width: 14.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildUserProfileColumn(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "How we ",
                style: CustomTextStyles.titleMediumBlack900_2,
              ),
              TextSpan(
                text: "work",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 11.v),
        SizedBox(
          height: 131.v,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 14.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 29.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofileItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventyColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Our ",
                  style: CustomTextStyles.titleMediumBlack900_2,
                ),
                TextSpan(
                  text: "marketplace",
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage4,
                        height: 92.v,
                        width: 98.h,
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: 84.h,
                        child: Text(
                          "Natural dairy products",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: appTheme.black900,
                            fontSize: 13.fSize,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 129.h,
                        child: Text(
                          "Indulge in the pure goodness of farm-fresh milk, ethically sourced and rich in nutrients, bringing the wholesome taste of nature to your table",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: appTheme.black900,
                            fontSize: 8.fSize,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 29.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: 68.v,
                        width: 130.h,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        height: 92.v,
                        width: 138.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 100.h,
                                child: Text(
                                  "Nature's Sacred Alchemy",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontSize: 13.fSize,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                width: 138.h,
                                child: Text(
                                  "From organic garden nourishment to handcrafted diyas, discover the versatility of cow dung in creating sustainable, eco-friendly products that illuminate traditions and nurture the Earth.",
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontSize: 8.fSize,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookAPickupButton2(BuildContext context) {
    return CustomOutlinedButton(
      width: 175.h,
      text: "Book a pickup",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 11.v,
          width: 14.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreOurMarketplaceButton2(BuildContext context) {
    return CustomOutlinedButton(
      text: "Explore our marketplace",
      margin: EdgeInsets.only(
        left: 34.h,
        right: 27.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowrightPrimary,
          height: 11.v,
          width: 14.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
    );
  }
}
