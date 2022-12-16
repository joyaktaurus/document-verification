// To parse this JSON data, do
//
//     final verificationResp = verificationRespFromJson(jsonString);

import 'dart:convert';

VerificationResp verificationRespFromJson(String str) =>
    VerificationResp.fromJson(json.decode(str));

String verificationRespToJson(VerificationResp data) =>
    json.encode(data.toJson());

class VerificationResp {
  VerificationResp({
    this.status,
    this.code,
    this.data,
    this.errors,
  });

  String? status;
  int? code;
  Data? data;
  dynamic errors;

  factory VerificationResp.fromJson(Map<String, dynamic> json) =>
      VerificationResp(
        status: json["status"],
        code: json["code"],
        data: Data.fromJson(json["data"]),
        errors: json["errors"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "data": data?.toJson(),
        "errors": errors,
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.addressLine1,
    this.addressLine2,
    this.images,
    this.documentType,
    this.documentInfo,
    this.status,
    this.metaInfo,
  });

  dynamic id;
  String? name;
  String? phone;
  dynamic email;
  String? addressLine1;
  dynamic addressLine2;
  dynamic images;
  String? documentType;
  String? documentInfo;
  String? status;
  MetaInfo? metaInfo;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        addressLine1: json["addressLine1"],
        addressLine2: json["addressLine2"],
        images: json["images"],
        documentType: json["documentType"],
        documentInfo: json["documentInfo"],
        status: json["status"],
        metaInfo: json["metaInfo"] != null
            ? MetaInfo.fromJson(json["metaInfo"])
            : MetaInfo(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "addressLine1": addressLine1,
        "addressLine2": addressLine2,
        "images": images,
        "documentType": documentType,
        "documentInfo": documentInfo,
        "status": status,
        "metaInfo": metaInfo?.toJson(),
      };
}

class MetaInfo {
  MetaInfo({
    this.uid,
    this.name,
    this.gender,
    this.yob,
    this.gname,
    this.co,
    this.house,
    this.street,
    this.lm,
    this.loc,
    this.vtc,
    this.po,
    this.dist,
    this.subdist,
    this.state,
    this.pc,
    this.dob,
  });

  String? uid;
  String? name;
  String? gender;
  String? yob;
  String? gname;
  String? co;
  String? house;
  String? street;
  String? lm;
  String? loc;
  String? vtc;
  String? po;
  String? dist;
  String? subdist;
  String? state;
  String? pc;
  String? dob;

  factory MetaInfo.fromJson(Map<String, dynamic> json) => MetaInfo(
        uid: json["uid"],
        name: json["name"],
        gender: json["gender"],
        yob: json["yob"],
        gname: json["gname"],
        co: json["co"],
        house: json["house"],
        street: json["street"],
        lm: json["lm"],
        loc: json["loc"],
        vtc: json["vtc"],
        po: json["po"],
        dist: json["dist"],
        subdist: json["subdist"],
        state: json["state"],
        pc: json["pc"],
        dob: json["dob"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "gender": gender,
        "yob": yob,
        "gname": gname,
        "co": co,
        "house": house,
        "street": street,
        "lm": lm,
        "loc": loc,
        "vtc": vtc,
        "po": po,
        "dist": dist,
        "subdist": subdist,
        "state": state,
        "pc": pc,
        "dob": dob,
      };
}
