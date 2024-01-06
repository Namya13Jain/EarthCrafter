import 'package:flutter/material.dart';
import 'package:namya_s_application/core/app_export.dart';
import 'package:namya_s_application/widgets/custom_outlined_button.dart';
import 'package:namya_s_application/widgets/custom_text_form_field.dart';

class BookTwoScreen extends StatelessWidget {
  BookTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController foodclothesetcController = TextEditingController();

  TextEditingController weightController = TextEditingController();

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
              SizedBox(height: 53.v),
              Text(
                "Donation details",
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 16.v),
              _buildDonationDetails(context),
              SizedBox(height: 17.v),
              _buildQuantityAppxSize(context),
              Spacer(
                flex: 67,
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
                flex: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Type of donation",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 3.v),
          CustomTextFormField(
            controller: foodclothesetcController,
            hintText: "Food, clothes etc",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuantityAppxSize(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quantity/Appx size of donation",
            style: TextStyle(
              color: appTheme.gray800,
              fontSize: 14.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: weightController,
            hintText: "1 kg",
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
