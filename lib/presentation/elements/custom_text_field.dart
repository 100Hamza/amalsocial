import 'package:amalsocial/presentation/elements/cutoms_text.dart';
import 'package:amalsocial/presentation/statics/data_values.dart';
import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  // FontWeight? fontWeight;
  bool isPass , isObscure, isForgotPass ;
  String? fieldName;
  TextInputType? textInputType;
  TextAlign textAlign;
  double height;
  String hintText;
  VoidCallback? onTap ;
  Widget? widget;



  CustomTextField(
      {
        super.key,
        this.textAlign = TextAlign.start,
        this.controller,
        // this.fontWeight,
        this.textInputType,
        this.fieldName,
        this.isPass = false,
        this.isObscure = false,
        this.isForgotPass = false,
        this.height = 0.05,
        this.hintText = 'What is Happening?',
        this.onTap,
        this.widget
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: fieldName.toString(), fontSize: 14, fontWeight: FontWeight.w500, textColor: AppTheme.kBoldTextColor,),
        TextField(
          textAlign: textAlign,
          obscureText: isObscure,
          textCapitalization: TextCapitalization.sentences,
          keyboardType: textInputType,
          controller: controller,
          style: const TextStyle(
            color: AppTheme.kBoldTextColor,
            fontSize: 16,
            // fontWeight: fontWeight,
          ),
          cursorColor: AppTheme.kBoldTextColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
              hintStyle: const TextStyle(color: AppTheme.kCustomTextFiledHintTextColor , fontSize: 16 , fontFamily: 'Roboto'),
              counterText: '',
            contentPadding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
            enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(5), // Set the border radius
                borderSide:
                const BorderSide(width: 1, color: AppTheme.kCustomTextFiledBorderColor),
              ),
              focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                const BorderSide(width: 1, color: AppTheme.kCustomTextFiledBorderColor),
              ),
            suffixIcon: isPass ? widget : Container(width: 0.0,),

          ),
        ),
        isForgotPass? Container(
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: InkWell(
              onTap: onTap,
              child: CustomText(text: DataValue.kForgetPass, fontSize: 14, fontWeight: FontWeight.w500, textColor: AppTheme.kForgotPassColor,)),
        ): Container(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015,)
      ],
    );
  }
}
