import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AuthDB {
  Box? authbox;

  Future<void> writeToDB(String token) async {
    await openbox();
    await authbox!.put("access_token", token);
  }

  Future<void> openbox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    authbox = await Hive.openBox("authbox");
  }

  Future<void> deleteAccessToken() async {
    await openbox();
    authbox!.delete("access_token");
  }
}
