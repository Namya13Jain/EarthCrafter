import 'package:flutter/material.dart';
import 'package:namya_s_application/core/app_export.dart';
import 'package:namya_s_application/widgets/custom_outlined_button.dart';
import 'package:namya_s_application/widgets/custom_text_form_field.dart';

class BookScreen extends StatelessWidget {
  BookScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 43.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Book a ",
                      style: theme.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: "Pickup ",
                      style: CustomTextStyles.displaySmallSecondaryContainer,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 54.v),
              Text(
                "Pickup details",
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 15.v),
              _buildPickupDetails(context),
              SizedBox(height: 16.v),
              _buildPreferredDate(context),
              SizedBox(height: 17.v),
              _buildAnySpecialInstructions(context),
              Spacer(
                flex: 52,
              ),
              CustomOutlinedButton(
                width: 131.h,
                text: "Proceed",
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 9.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 11.v,
                    width: 14.h,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Spacer(
                flex: 47,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPickupDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Preferred Time",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.v),
          CustomOutlinedButton(
            height: 35.v,
            width: 104.h,
            text: "00:00 am",
            buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPreferredDate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Preferred Date",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.v),
          CustomOutlinedButton(
            height: 35.v,
            width: 118.h,
            text: "dd/mm/yyyy",
            buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAnySpecialInstructions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 279.h,
            margin: EdgeInsets.only(right: 23.h),
            child: Text(
              "Any special instructions or notes related to the pickup",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: appTheme.gray800,
                fontSize: 14.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: editTextController,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
