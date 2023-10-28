import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:amalsocial/presentation/view/splash_screen/layout/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.sizeOf(context).height * 1,
          width: MediaQuery.sizeOf(context).width * 1,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            image: DecorationImage(
              image: const AssetImage('assets/images/splashbg.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                AppTheme.kImageShadeColor,
                // Adjust the opacity and color as desired
                BlendMode.srcOver,
              ),
            ),
          ),
          child: const SplashScreenBody()),
    );
  }
}
