import 'package:amalsocial/presentation/elements/custom_button.dart';
import 'package:amalsocial/presentation/elements/custom_rich_text.dart';
import 'package:amalsocial/presentation/elements/custom_text_field.dart';
import 'package:amalsocial/presentation/elements/cutoms_text.dart';
import 'package:amalsocial/presentation/elements/icon_button.dart';
import 'package:amalsocial/presentation/statics/data_values.dart';
import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:amalsocial/presentation/view/login/login_view.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool isObscurePass = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _tokenController = TextEditingController();
  final TextEditingController _deviceType = TextEditingController();


  bool isButtonEnabled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _emailController.addListener(updateButton);
    _passController.addListener(updateButton);
    _tokenController.addListener(updateButton);
    _deviceType.addListener(updateButton);

  }

  void updateButton() {
    setState(() {
      isButtonEnabled =
          _emailController.text.isNotEmpty &&
          _passController.text.isNotEmpty &&
          _deviceType.text.isNotEmpty &&
          _tokenController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
    _tokenController.dispose();
    _deviceType.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomIconButton(
                    icon: Icons.arrow_back_ios,
                  ),
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: const Image(
                          image: AssetImage('assets/images/logo.png'))),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    width: MediaQuery.sizeOf(context).width * 0.14,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              CustomText(
                text: DataValue.kSignUp,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.005,
              ),
              CustomText(
                text: DataValue.kPleaseSignUp,
                fontWeight: FontWeight.w200,
                fontSize: 16.0,
                textColor: AppTheme.kGreyLightText,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextField(
                      controller: _emailController,
                      hintText: DataValue.kEnterYourEmail,
                      fieldName: DataValue.kEnterYourEmail,
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomTextField(
                      controller: _passController,
                      hintText: DataValue.kEnterYourPass,
                      fieldName: DataValue.kEnterYourPass,
                      isPass: true,
                      textInputType: TextInputType.visiblePassword,
                      isObscure: isObscurePass,
                      widget: (IconButton(
                          onPressed: () {
                            setState(() {
                              isObscurePass = !isObscurePass;
                            });
                          },
                          icon: isObscurePass
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined))),
                    ),

                    CustomTextField(
                      controller: _tokenController,
                      hintText: DataValue.kEnterToken,
                      fieldName: DataValue.kToken,
                      textInputType: TextInputType.phone,
                    ),
                    CustomTextField(
                      controller: _deviceType,
                      hintText: DataValue.kEnterDeviceType,
                      fieldName: DataValue.kToken,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                    CustomButton(
                      isButtonEnable: isButtonEnabled,
                      onPress: isButtonEnabled ? () {} : null,
                      text: DataValue.kContinueButton,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                    CustomRichText(
                      leftText: DataValue.kAlreadyHave,
                      rightText: DataValue.kLogIn,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(),));
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                  ],
                ),
              ))
            ],
          )),
    );
  }
}
