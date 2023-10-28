import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  IconData icon;
  CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.048,
      width: MediaQuery.sizeOf(context).width * 0.11,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppTheme.kIconButtonColor
        )
      ),
      child: const Icon(Icons.arrow_back_ios , size: 20,),
    );
  }
}
