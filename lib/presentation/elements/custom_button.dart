import 'package:amalsocial/presentation/elements/cutoms_text.dart';
import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text, fontFamily;
  double height, width;
  double fontSize;
  IconData? iconData;
  Color fontColor;
  FontWeight? fontWeight;
  VoidCallback? onPress;
  double radius;
  Color containerColor;
  bool isButtonEnable;

  CustomButton({
    super.key,
    this.text,
    this.fontFamily,
    this.height = 50,
    this.width = double.infinity,
    this.fontSize = 18,
    this.iconData,
    this.fontColor = Colors.white,
    // this.shadowColor,
    this.fontWeight,
    this.onPress,
    this.radius = 10,
    this.containerColor = AppTheme.kForgotPassColor,
    this.isButtonEnable = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Material(
        borderOnForeground: true,
        // shadowColor: shadowColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        type: MaterialType.canvas,
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isButtonEnable ? containerColor : AppTheme.kIconButtonColor,
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          child: CustomText(
            text: text.toString(),
            textColor: isButtonEnable
                ? fontColor
                : AppTheme.kCustomTextFiledHintTextColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
