import 'package:flutter/material.dart';
import 'package:linkedin/db/auth_dbService.dart';
import 'package:linkedin/model/auth/AuthModel.dart';
import 'package:linkedin/service/auth/auth_service.dart';
import 'package:linkedin/ui/pages/MainPage.dart';

class RegisterProvider extends ChangeNotifier {
  AuthService authService = AuthService();
  AuthDB authDB = AuthDB();
  bool isLoading = false;
  String error = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController fnameController = TextEditingController();

  Future<void> register(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    dynamic response = await authService.register(
        email: emailController.text,
        password: passwordController.text,
        lname: lnameController.text,
        fname: fnameController.text);
    if (response is AuthModel) {
      isLoading = true;
      await authDB.writeToDB(response.accesToken.toString());
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
      notifyListeners();
    } else {
      isLoading = false;
      error = response;
      notifyListeners();
    }
  }
}
