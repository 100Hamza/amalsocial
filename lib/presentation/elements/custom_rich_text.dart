import 'package:amalsocial/presentation/statics/data_values.dart';
import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  VoidCallback onTap;
  String leftText , rightText;
  CustomRichText({super.key, required this.onTap, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
           TextSpan(
            text: leftText.toString(),
            style: TextStyle(fontSize: 14, color: AppTheme.kBoldTextColor),
          ),
          TextSpan(
            text: ' ${rightText.toString()}',
            style: const TextStyle(fontSize: 14, color: AppTheme.kForgotPassColor),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap
          ),
        ],
      ),
    );;
  }
}
