import 'package:amalsocial/presentation/elements/custom_button.dart';
import 'package:amalsocial/presentation/elements/custom_rich_text.dart';
import 'package:amalsocial/presentation/elements/custom_text_field.dart';
import 'package:amalsocial/presentation/elements/cutoms_text.dart';
import 'package:amalsocial/presentation/elements/icon_button.dart';
import 'package:amalsocial/presentation/statics/data_values.dart';
import 'package:amalsocial/presentation/utils/apptheme/app_theme.dart';
import 'package:amalsocial/presentation/view/signup/signup_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {

  bool isObscurePass = true;
  bool isObscureConfirmPass = true;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _countryIdController = TextEditingController();
  final TextEditingController _cityIdController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emirateIdController = TextEditingController();
  final TextEditingController _registrationSocietyController =
  TextEditingController();
  final TextEditingController _subCommunityController = TextEditingController();
  final TextEditingController _fileController = TextEditingController();

  bool isButtonEnabled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullNameController.addListener(updateButton);
    _emailController.addListener(updateButton);
    _passController.addListener(updateButton);
    _confirmPassController.addListener(updateButton);
    _mobileController.addListener(updateButton);
    _phoneController.addListener(updateButton);
    _locationController.addListener(updateButton);
    _countryIdController.addListener(updateButton);
    _cityIdController.addListener(updateButton);
    _addressController.addListener(updateButton);
    _emirateIdController.addListener(updateButton);
    _registrationSocietyController.addListener(updateButton);
    _subCommunityController.addListener(updateButton);
    _fileController.addListener(updateButton);
  }

  void updateButton() {
    setState(() {
      isButtonEnabled = _fullNameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _passController.text.isNotEmpty &&
          _confirmPassController.text.isNotEmpty &&
          _mobileController.text.isNotEmpty &&
          _phoneController.text.isNotEmpty &&
          _locationController.text.isNotEmpty &&
          _countryIdController.text.isNotEmpty &&
          _cityIdController.text.isNotEmpty &&
          _addressController.text.isNotEmpty &&
          _emirateIdController.text.isNotEmpty &&
          _registrationSocietyController.text.isNotEmpty &&
          _subCommunityController.text.isNotEmpty &&
          _fileController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passController.dispose();
    _confirmPassController.dispose();
    _mobileController.dispose();
    _phoneController.dispose();
    _locationController.dispose();
    _addressController.dispose();
    _countryIdController.dispose();
    _cityIdController.dispose();
    _emirateIdController.dispose();
    _cityIdController.dispose();
    _registrationSocietyController.dispose();
    _fileController.dispose();
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
                text: DataValue.kLogIn,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.005,
              ),
              CustomText(
                text: DataValue.kPleaseLogIn,
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
                          controller: _fullNameController,
                          hintText: DataValue.kEnterYourName,
                          fieldName: DataValue.kEnterFullYourName,
                          textInputType: TextInputType.text,
                        ),
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
                          controller: _confirmPassController,
                          hintText: DataValue.kConfirmPass,
                          fieldName: DataValue.kConfirmPass,
                          isForgotPass: true,
                          isPass: true,
                          isObscure: isObscureConfirmPass,
                          widget: (IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscureConfirmPass = !isObscureConfirmPass;
                                });
                              },
                              icon: isObscureConfirmPass
                                  ? const Icon(Icons.visibility_off_outlined)
                                  : const Icon(Icons.visibility_outlined))),
                        ),
                        CustomTextField(
                          controller: _mobileController,
                          hintText: DataValue.kEnterYourNumber,
                          fieldName: DataValue.kEnterYourMobile,
                          textInputType: TextInputType.phone,
                        ),
                        CustomTextField(
                          controller: _phoneController,
                          hintText: DataValue.kEnterYourNumber,
                          fieldName: DataValue.kEnterYourMobile,
                          textInputType: TextInputType.phone,
                        ),
                        CustomTextField(
                          controller: _locationController,
                          hintText: DataValue.kLocation,
                          fieldName: DataValue.kLocation,
                          textInputType: TextInputType.streetAddress,
                          widget: const Icon(Icons.location_on),
                          isPass: true,
                        ),
                        CustomTextField(
                          controller: _countryIdController,
                          hintText: DataValue.kEnterCountryId,
                          fieldName: DataValue.kCountryId,
                          textInputType: TextInputType.text,
                        ),
                        CustomTextField(
                          controller: _cityIdController,
                          hintText: DataValue.kEnterCityId,
                          fieldName: DataValue.kCityId,
                          textInputType: TextInputType.text,
                        ),
                        CustomTextField(
                          controller: _addressController,
                          hintText: DataValue.kAddress,
                          fieldName: DataValue.kEnterAddress,
                          textInputType: TextInputType.streetAddress,
                        ),
                        CustomTextField(
                          controller: _emirateIdController,
                          hintText: DataValue.kEnterEmirate,
                          fieldName: DataValue.kEmirateId,
                          textInputType: TextInputType.text,
                        ),
                        CustomTextField(
                          controller: _registrationSocietyController,
                          hintText: DataValue.kEnterRegistrationSociety,
                          fieldName: DataValue.kRegistrationSociety,
                        ),
                        CustomTextField(
                          controller: _subCommunityController,
                          hintText: DataValue.kEnterSubCommunity,
                          fieldName: DataValue.kSubCommunity,
                        ),
                        CustomTextField(
                          controller: _fileController,
                          hintText: DataValue.kFile,
                          fieldName: DataValue.kFile,
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
                          leftText: DataValue.kDonHave,
                          rightText: DataValue.kSignUp,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView(),));
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
