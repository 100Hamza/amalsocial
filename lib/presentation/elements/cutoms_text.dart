import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color textColor;
  FontWeight? fontWeight;
  double fontSize;
  CustomText({super.key , required this.text,this.textColor = AppTheme.kBoldTextColor, this.fontWeight , this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
