import 'package:dio/dio.dart';
import 'package:linkedin/core/constants/Api.dart';
import 'package:linkedin/model/Model.dart';

class Service {
  Future<dynamic> getNotification() async {
    try {
      Response response = await Dio().get(Constants.api);
      if (response.statusCode == 200) {
        return Model.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return "iltimos internetingizni tekshiring";
      } else {
        return e.error.toString();
      }
    }
  }
}
