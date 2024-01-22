import 'models/iphone_13_mini_four_model.dart';
import 'package:abdelrahman_s_application2/core/app_export.dart';
import 'package:abdelrahman_s_application2/core/utils/validation_functions.dart';
import 'package:abdelrahman_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdelrahman_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_mini_four_provider.dart';

class Iphone13MiniFourScreen extends StatefulWidget {
  const Iphone13MiniFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13MiniFourScreenState createState() => Iphone13MiniFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13MiniFourProvider(),
      child: Iphone13MiniFourScreen(),
    );
  }
}

class Iphone13MiniFourScreenState extends State<Iphone13MiniFourScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 29.v,
                ),
                child: Column(
                  children: [
                    _buildLineTwoRow(context),
                    SizedBox(height: 50.v),
                    Container(
                      margin: EdgeInsets.only(left: 5.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 17.v,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_hello".tr,
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_welcome_back".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Selector<Iphone13MiniFourProvider,
                                TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.emailController,
                              builder: (context, emailController, child) {
                                return CustomTextFormField(
                                  controller: emailController,
                                  hintText: "lbl_email".tr,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Consumer<Iphone13MiniFourProvider>(
                              builder: (context, provider, child) {
                                return CustomTextFormField(
                                  controller: provider.passwordController,
                                  hintText: "lbl_password".tr,
                                  hintStyle: theme.textTheme.titleSmall!,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                    onTap: () {
                                      provider.changePasswordVisibility();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 15.v, 15.h, 13.v),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgEye1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                      ),
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    maxHeight: 48.v,
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: provider.isShowPassword,
                                  contentPadding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 13.v,
                                    bottom: 13.v,
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 37.v),
                          Padding(
                            padding: EdgeInsets.only(left: 76.h),
                            child: Text(
                              "msg_forgot_password".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          CustomElevatedButton(
                            text: "lbl_log_in".tr,
                            margin: EdgeInsets.symmetric(horizontal: 19.h),
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 33.v),
                          Padding(
                            padding: EdgeInsets.only(left: 50.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_didn_t_joined_yet2".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl_sign_up".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 22.v),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineTwoRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 36.v,
              bottom: 29.v,
            ),
            child: SizedBox(
              width: 103.h,
              child: Divider(),
            ),
          ),
          SizedBox(
            height: 66.v,
            width: 63.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 63.adaptSize,
                  width: 63.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPhoto2202312,
                  height: 60.v,
                  width: 41.h,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 34.v,
              bottom: 29.v,
            ),
            child: SizedBox(
              width: 103.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
