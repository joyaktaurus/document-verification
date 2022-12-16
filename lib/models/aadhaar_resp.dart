class AadhaarResp {
  AadhaarResp({
    required this.printLetterBarcodeData,
  });

  PrintLetterBarcodeData printLetterBarcodeData;
}

class PrintLetterBarcodeData {
  PrintLetterBarcodeData({
    required this.uid,
    required this.name,
    required this.gender,
    required this.yob,
    required this.gname,
    required this.co,
    required this.house,
    required this.street,
    required this.lm,
    required this.loc,
    required this.vtc,
    required this.po,
    required this.dist,
    required this.subdist,
    required this.state,
    required this.pc,
    required this.dob,
  });

  String uid;
  String name;
  String gender;
  String yob;
  String gname;
  String co;
  String house;
  String street;
  String lm;
  String loc;
  String vtc;
  String po;
  String dist;
  String subdist;
  String state;
  String pc;
  String dob;
}
