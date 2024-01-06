import 'package:flutter/material.dart';
import 'package:namya_s_application/core/app_export.dart';
import 'package:namya_s_application/widgets/custom_outlined_button.dart';
import 'package:namya_s_application/widgets/custom_text_form_field.dart';

class BookThreeScreen extends StatelessWidget {
  BookThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 298.h,
                margin: EdgeInsets.only(right: 16.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Book a ",
                        style: theme.textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: "Pickup",
                        style: CustomTextStyles.displaySmallSecondaryContainer,
                      ),
                      TextSpan(
                        text: " – Your Step Towards ",
                        style: theme.textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: "Green Generosity",
                        style: CustomTextStyles.displaySmallSecondaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 31.v),
              Text(
                "Location details",
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 15.v),
              _buildAddressSection(context),
              SizedBox(height: 18.v),
              _buildCityStateSection(context),
              SizedBox(height: 16.v),
              _buildPincodeSection(context),
              SizedBox(height: 76.v),
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Address",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
            controller: addressController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCityStateSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "City, State",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 3.v),
          CustomTextFormField(
            controller: cityController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPincodeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pincode",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
            controller: pincodeController,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
