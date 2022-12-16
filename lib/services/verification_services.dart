import 'package:flutter/widgets.dart';

import '../models/api_msg.dart';
import '../models/api_resp.dart';
import '../models/new_entry_resp.dart';
import '../presets/api_paths.dart';
import '../utils/err_m.dart';
import '../utils/mydio.dart';

abstract class VerificationServices {
  static Future<ApiResp> verificationProcess(NewEntryResp payLoad) async {
    dynamic resp;
    await errMAsync(() async {
      resp = await MyDio().post(
        ApiPaths.verification,
        data: {
          "name": payLoad.name,
          "phone": payLoad.phone,
          "addressLine1": payLoad.addressLine1,
          "documentType": payLoad.idType,
          "documentInfo": payLoad.scanedData
        },
      );
    }, title: 'Failed', dialogDismiss: true);
    respNew = resp != null
        ? ApiResp(
            ok: true,
            rdata: resp,
            msgs: [
              ApiMsg(
                msg: "",
                msgType: "",
                title: "Success",
              )
            ],
          )
        : ApiResp(
            ok: false,
            rdata: "",
            msgs: [
              ApiMsg(
                msg: "Server response failed",
                msgType: "0",
                title: "Failed",
              )
            ],
          );
    return respNew;
  }
  static Future<ApiResp>verificationMultipartImageProcess(NewEntryResp payLoad) async {
    dynamic resp;
    await errMAsync(() async {
      resp = await MyDio().post(
        ApiPaths.verification,
        data: {
          "name": ".tmp/images/NuJtPgvIPrxJAcYrOEFfyxLKOiGsGxyt.png",
          "documentType": "Image",
        },
      );
    }, title: 'Failed', dialogDismiss: true);
    respNew = resp != null
        ? ApiResp(
      ok: true,
      rdata: resp,
      msgs: [
        ApiMsg(
          msg: "",
          msgType: "",
          title: "Success",
        )
      ],
    )
        : ApiResp(
      ok: false,
      rdata: "",
      msgs: [
        ApiMsg(
          msg: "Server response failed",
          msgType: "0",
          title: "Failed",
        )
      ],
    );

    return respNew;
  }
}
