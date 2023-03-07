class UserModel {
  int? responseTime;
  String? responseType;
  int? status;
  String? response;
  Null? msg;
  List<Data>? data;

  UserModel(
      {this.responseTime,
      this.responseType,
      this.status,
      this.response,
      this.msg,
      this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    responseTime = json['responseTime'];
    responseType = json['responseType'];
    status = json['status'];
    response = json['response'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseTime'] = this.responseTime;
    data['responseType'] = this.responseType;
    data['status'] = this.status;
    data['response'] = this.response;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? officeId;
  String? officeNameEn;
  String? officeName;
  List<OfficeUsers>? officeUsers;

  Data({this.officeId, this.officeNameEn, this.officeName, this.officeUsers});

  Data.fromJson(Map<String, dynamic> json) {
    officeId = json['office_id'];
    officeNameEn = json['office_name_en'];
    officeName = json['office_name'];
    if (json['office_users'] != null) {
      officeUsers = <OfficeUsers>[];
      json['office_users'].forEach((v) {
        officeUsers!.add(new OfficeUsers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['office_id'] = this.officeId;
    data['office_name_en'] = this.officeNameEn;
    data['office_name'] = this.officeName;
    if (this.officeUsers != null) {
      data['office_users'] = this.officeUsers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OfficeUsers {
  String? nameEn;
  String? name;
  String? photo;
  String? presentAddress;
  String? permanentAddress;
  String? officePhone;
  String? phone;
  String? mobile;
  String? email;
  String? designation;

  OfficeUsers(
      {this.nameEn,
      this.name,
      this.photo,
      this.presentAddress,
      this.permanentAddress,
      this.officePhone,
      this.phone,
      this.mobile,
      this.email,
      this.designation});

  OfficeUsers.fromJson(Map<String, dynamic> json) {
    nameEn = json['name_en'];
    name = json['name'];
    photo = json['photo'];
    presentAddress = json['present_address'];
    permanentAddress = json['permanent_address'];
    officePhone = json['office_phone'];
    phone = json['phone'];
    mobile = json['mobile'];
    email = json['email'];
    designation = json['designation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_en'] = this.nameEn;
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['present_address'] = this.presentAddress;
    data['permanent_address'] = this.permanentAddress;
    data['office_phone'] = this.officePhone;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['designation'] = this.designation;
    return data;
  }
}
