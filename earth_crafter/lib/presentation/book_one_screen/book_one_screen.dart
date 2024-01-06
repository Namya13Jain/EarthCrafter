import 'package:flutter/material.dart';
import 'package:namya_s_application/core/app_export.dart';
import 'package:namya_s_application/widgets/custom_outlined_button.dart';
import 'package:namya_s_application/widgets/custom_text_form_field.dart';

class BookOneScreen extends StatelessWidget {
  BookOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

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
                "Goshala preferences",
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                width: 291.h,
                margin: EdgeInsets.only(right: 22.h),
                child: Text(
                  "Is there any specific goshala you want the donations to go to? (If yes, specify the name and location. Otherwise write N/A)",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: appTheme.gray800,
                    fontSize: 14.fSize,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(right: 11.h),
                child: CustomTextFormField(
                  controller: nameController,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Spacer(
                flex: 68,
              ),
              CustomOutlinedButton(
                width: 157.h,
                text: "Confirm Pickup",
                alignment: Alignment.center,
              ),
              Spacer(
                flex: 31,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
