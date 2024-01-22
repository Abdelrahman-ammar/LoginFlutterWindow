import 'package:flutter/material.dart';
import 'package:abdelrahman_s_application2/core/app_export.dart';
import 'package:abdelrahman_s_application2/presentation/iphone_13_mini_four_screen/models/iphone_13_mini_four_model.dart';

/// A provider class for the Iphone13MiniFourScreen.
///
/// This provider manages the state of the Iphone13MiniFourScreen, including the
/// current iphone13MiniFourModelObj
class Iphone13MiniFourProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Iphone13MiniFourModel iphone13MiniFourModelObj = Iphone13MiniFourModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
