class AuthModel {
  String? message;
  String? accesToken;

  AuthModel({this.message, this.accesToken});

  AuthModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    accesToken = json['acces_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['acces_token'] = this.accesToken;
    return data;
  }
}
