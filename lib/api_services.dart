import 'dart:convert';

import 'package:victadoft/http_request.dart';
import 'package:victadoft/modal.dart';

Future<Victasoft?> getApp() async {
  var response = await postRequest('homelist', {});
  print(
      " \n\n\n•••••••••••••••••getAppToken responseData ${response.toString()}\n\n\n•••••••••••••••••");

  var responseData = jsonDecode(response.body);
  print(responseData);
  Victasoft? victasoftData;
  if (responseData['data'] != null) {
    victasoftData = Victasoft.fromJson(responseData);
  }
  return victasoftData;
}
