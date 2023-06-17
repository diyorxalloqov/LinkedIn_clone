import 'package:flutter/material.dart';
import 'package:linkedin/model/Model.dart';
import 'package:linkedin/service/Service.dart';

class MynetworkProvider extends ChangeNotifier {
  MynetworkProvider() {
    getNotificationProvider();
  }
  Service service = Service();
  bool isLoading = false;
  Model? data;
  String error = '';

  Future<void> getNotificationProvider() async {
    isLoading = true;
    notifyListeners();
    dynamic response = await service.getNotification();
    if (response is Model) {
      isLoading = false;
      data = response;
      notifyListeners();
    } else {
      isLoading = false;
      error = response;
      notifyListeners();
    }
  }
}
