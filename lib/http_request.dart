import 'package:http/http.dart' as http;
import 'package:victadoft/constant.dart';

import 'dart:async';
import 'dart:convert';
import '../exceptions.dart';

Future<dynamic> postRequest(String endpoint, Map parameters) async {
  print("URL :: $API_HOST + $apiPath + $endpoint + $parameters");
  var response;

  try {
    response = await http.post(
      Uri.parse(API_HOST + apiPath + endpoint),
      headers: {
        "Content-Type": "application/json",
        "Company": "eticks",
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWU5N2E5MWYxYWYxZWM4OWU4NWJhMWZkYjkzYjlhOGU1MjNjMmUwMWQ5YjA4ODJmMGI5MmU0NWE0ZDk5YTk4Y2ViNzdhNTMxYTI0ZGM4NzYiLCJpYXQiOjE2ODQ5OTY2ODguNDAxNTk2LCJuYmYiOjE2ODQ5OTY2ODguNDAxNjAxLCJleHAiOjE3MTY2MTkwODguMzg3OTc4LCJzdWIiOiI1NSIsInNjb3BlcyI6WyJmcm9udHVzZXIiXX0.mvB7sIusDS0DGY90jBehnvcGGtpAp5soDrTPL-TX-AKyMKC9mSc1OT1SxkRL_FnxEKqjh0Ml1uOapVqcEGKY1NbK0qn3BsgbGQm_i7JvMBfiNbKjm66N6qG8_IHrarxmAhLMTAs7L2SWrYfyiFMar7ZoMZmZALTfymU-wyaVR18x0dCHvgVt3upuwZnP9IaCf1kLfeoW-pbyBKdfP7WF_niP-xL2EBpaYJy8iAHd0A-QyEDF1ypWyGjTbD_E07MrHCDW1b8UWXn1430wrlznfXVV4E6TzV2WRB7mPE_FUGntlwIkvuCJjR5CrFDmSajMkcpg2FAImJOrtyQBh9R-swFK04Qazgt8wMmOZDvQMRfXNHz_fI2mCzBsIfFGLiWA7_VrJBwv-_m3N2SIFl2QG91owEITnTx3uRuYFUErqr2-V6uoETZEervE10-KjZnaRVOSOxb_0WszoKdd5KhXzIzpey3b0jXY_pfMJeUFbmNrH6WNqVNEbay79QKmRV0gi_5k7bFzsjco9NXyRUof1FD7u3BUhFlcwoCcmuNk5Kc6b4TG5ciUZlInvDiv11VyTnGAKgCMLxHgyItVxM2mIPcF65YMjlS5Y-HxA1WwZvTrJ6XvCXvi7qazR2QtNkaG61T4MwfwW2wX5FKe4oh6CCaKCaYrzbFDfRgQGO2gWJ8"
      },
      body: json.encode(parameters),
    );
  } on Exception catch (error) {
    if (error.toString().contains('SocketException')) {
      throw new FetchDataException(
          'Error occured while communicating with Server!');
    }
  }
  updateReqTime();
  return response;
}

void updateReqTime() async {}
