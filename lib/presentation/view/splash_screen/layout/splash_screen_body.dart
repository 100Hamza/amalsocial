import 'dart:async';
import 'package:amalsocial/presentation/view/login/login_view.dart';
import 'package:amalsocial/presentation/view/signup/signup_view.dart';
import 'package:flutter/material.dart';


class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}


class _SplashScreenBodyState extends State<SplashScreenBody> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView(),)),);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.8,
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: const Image(image: AssetImage('assets/images/splashfg.png'))),
    );
  }
}
