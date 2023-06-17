class Model {
  bool? status;
  List<Notification>? notification;
  List<MyNetwork>? myNetwork;

  Model({this.status, this.notification, this.myNetwork});

  Model.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['Notification'] != null) {
      notification = <Notification>[];
      json['Notification'].forEach((v) {
        notification!.add(new Notification.fromJson(v));
      });
    }
    if (json['My Network'] != null) {
      myNetwork = <MyNetwork>[];
      json['My Network'].forEach((v) {
        myNetwork!.add(new MyNetwork.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.notification != null) {
      data['Notification'] = this.notification!.map((v) => v.toJson()).toList();
    }
    if (this.myNetwork != null) {
      data['My Network'] = this.myNetwork!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notification {
  String? title;
  String? img;
  bool? bajarildi;

  Notification({this.title, this.img, this.bajarildi});

  Notification.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    img = json['img'];
    bajarildi = json['bajarildi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['img'] = this.img;
    data['bajarildi'] = this.bajarildi;
    return data;
  }
}

class MyNetwork {
  String? title;
  String? img;

  MyNetwork({this.title, this.img});

  MyNetwork.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['img'] = this.img;
    return data;
  }
}
