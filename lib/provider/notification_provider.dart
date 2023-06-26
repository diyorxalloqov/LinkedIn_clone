import 'package:flutter/material.dart';
import 'package:linkedin/model/Model.dart';
import 'package:linkedin/service/Service.dart';

class NotificationsProvider extends ChangeNotifier {
  NotificationsProvider() {
    awaitmessageCount();
  }
/////////////////////////////////////////////////
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
    print(data!.notification!.length);
  }
/////////////////////////////////////////////////////////////////////////

  void decrement(int index) {
    if (data!.notification![index].title!.isNotEmpty) {
      data!.notification![index].bajarildi = true;
      if (newMessageCount > 0) {
        newMessageCount--;
      }
      notifyListeners();
    }
  }

  void awaitmessageCount() async {
    await getNotificationProvider();
    newMessageCount = data!.notification!.length;
  }

  int newMessageCount = 0;
}





















// import 'package:flutter/material.dart';
// import 'package:linkedin/model/NotificationModel.dart';
// import 'package:linkedin/service/Service.dart';

// class NotificationsProvider extends ChangeNotifier {
//   NotificationsProvider() {
//     getNotificationProvider();
//   }

//   Service service = Service();
//   bool isLoading = false;
//   NotificationModel? data;
//   String error = '';

//   Future<void> getNotificationProvider() async {
//     isLoading = true;
//     notifyListeners();
//     dynamic response = await service.getNotification();
//     if (response is NotificationModel) {
//       isLoading = false;
//       data = response;
//       notifyListeners();
//     } else {
//       isLoading = false;
//       error = response;
//       notifyListeners();
//     }
//   }

//   void CheckNull(int index) {
//     if (data != null &&
//         data!.notification != null &&
//         data!.notification!.isNotEmpty) {
//       data!.notification![0].bajarildi = true;
//       notifyListeners();
//       if (newMessageCount > 0) {
//         // newMessageCount--;
//       }
//     }
//   }

//   int get newMessageCount {
//     if (data != null && data!.notification != null) {
//       return data!.notification!.length;
//     }
//     return 0;
//   }
// }
