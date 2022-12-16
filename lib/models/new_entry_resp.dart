// To parse this JSON data, do
//
//     final newEntryResp = newEntryRespFromJson(jsonString);

import 'dart:convert';

import 'package:dj_scanner/models/verification_resp.dart';

NewEntryResp newEntryRespFromJson(String str) =>
    NewEntryResp.fromJson(json.decode(str));

String newEntryRespToJson(NewEntryResp data) => json.encode(data.toJson());

class NewEntryResp {
  NewEntryResp({
    this.name,
    this.phone,
    this.addressLine1,
    this.addressLine2,
    this.images,
    this.idType,
    this.scanedData,
    this.metaInfo,
    this.verificationStatus,
  });

  String? name;
  String? phone;
  String? addressLine1;
  String? addressLine2;
  List<dynamic>? images;
  String? idType;
  String? scanedData;
  MetaInfo? metaInfo;
  bool? verificationStatus;

  factory NewEntryResp.fromJson(Map<String, dynamic> json) => NewEntryResp(
      name: json["name"],
      phone: json["phone"],
      addressLine1: json["addressLine1"],
      addressLine2: json["addressLine2"],
      images: List<dynamic>.from(json["images"].map((x) => x)),
      idType: json["idType"],
      scanedData: json["scanedData"],
      metaInfo: MetaInfo.fromJson(json["metaInfo"]),
      verificationStatus: json['status']);

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "addressLine1": addressLine1,
        "addressLine2": addressLine2,
        "images": List<dynamic>.from(images ?? [].map((x) => x)),
        "idType": idType,
        "scanedData": scanedData,
        "metaInfo": metaInfo?.toJson(),
      };
}
