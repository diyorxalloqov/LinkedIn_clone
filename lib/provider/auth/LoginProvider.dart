import 'package:flutter/material.dart';
import 'package:linkedin/db/auth_dbService.dart';
import 'package:linkedin/model/auth/AuthModel.dart';
import 'package:linkedin/service/auth/auth_service.dart';
import 'package:linkedin/ui/pages/MainPage.dart';

class LoginProvider extends ChangeNotifier {
  AuthDB authDB = AuthDB();
  AuthService authService = AuthService();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  String error = "";

  Future<void> login(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    dynamic response = await authService.login(
        email: emailController.text, password: passwordController.text);
    if (response is AuthModel) {
      isLoading = false;
      await authDB.writeToDB(response.accesToken.toString());
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);

      notifyListeners();
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(response)));
      isLoading = false;
      error = response;
      notifyListeners();
    }
  }
}
