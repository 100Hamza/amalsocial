import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:amalsocial/presentation/view/signup/layout/signup_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    // Change the status bar to transparent with dark icons
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set to transparent
      statusBarIconBrightness: Brightness.dark, // Set to dark icons
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent resizing when keyboard is displayed
      backgroundColor: AppTheme.kBgColor,
      body: Container(
          height: MediaQuery.sizeOf(context).height * 1,
          width: MediaQuery.sizeOf(context).width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/login.png'))
          ),
          child: SignUpBody()),
    );
  }
}
