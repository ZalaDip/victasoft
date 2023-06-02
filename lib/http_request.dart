import 'package:http/http.dart' as http;
import 'package:victadoft/constant.dart';

import 'dart:async';
import 'dart:convert';
import '../exceptions.dart';

Future<dynamic> postRequest(String endpoint, Map parameters) async {
  print("URL :: $API_HOST + $apiPath + $endpoint + $parameters");
  var response;
  // final url = API_HOST + apiPath + endpoint;

  try {
    // if (Platform.isIOS) {
    //   const iosHttp = const MethodChannel('com.wbbtv/http');
    //   final result = await iosHttp.invokeMapMethod('post', {
    //     'url': url,
    //     'method': 'POST',
    //     'body': parameters,
    //     'headers': User.shared.accessToken != null
    //         ? {
    //             "CUSTOMERID": CUSTOMER_ID,
    //             "Content-Type": "application/json",
    //             "Authorization": User.shared.accessToken
    //           }
    //         : {
    //             "CUSTOMERID": CUSTOMER_ID,
    //             "Content-Type": "application/json",
    //           },
    //   });

    //   return ReturnData(json.encode(result));
    // }
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
      //  showToast('Error occured while communicating with Server!',
      //    isError: true);
      throw new FetchDataException(
          'Error occured while communicating with Server!');
    }
  }
  //print(json.decode(response.body));
  updateReqTime();
  return response;
}

Future<http.Response> patchRequest(String endpoint, Map parameters) async {
  print("URL :: $API_HOST + $apiPath + $endpoint");
  var response;
  try {
    response = await http.patch(
      Uri.parse(API_HOST + apiPath + endpoint),
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWU5N2E5MWYxYWYxZWM4OWU4NWJhMWZkYjkzYjlhOGU1MjNjMmUwMWQ5YjA4ODJmMGI5MmU0NWE0ZDk5YTk4Y2ViNzdhNTMxYTI0ZGM4NzYiLCJpYXQiOjE2ODQ5OTY2ODguNDAxNTk2LCJuYmYiOjE2ODQ5OTY2ODguNDAxNjAxLCJleHAiOjE3MTY2MTkwODguMzg3OTc4LCJzdWIiOiI1NSIsInNjb3BlcyI6WyJmcm9udHVzZXIiXX0.mvB7sIusDS0DGY90jBehnvcGGtpAp5soDrTPL-TX-AKyMKC9mSc1OT1SxkRL_FnxEKqjh0Ml1uOapVqcEGKY1NbK0qn3BsgbGQm_i7JvMBfiNbKjm66N6qG8_IHrarxmAhLMTAs7L2SWrYfyiFMar7ZoMZmZALTfymU-wyaVR18x0dCHvgVt3upuwZnP9IaCf1kLfeoW-pbyBKdfP7WF_niP-xL2EBpaYJy8iAHd0A-QyEDF1ypWyGjTbD_E07MrHCDW1b8UWXn1430wrlznfXVV4E6TzV2WRB7mPE_FUGntlwIkvuCJjR5CrFDmSajMkcpg2FAImJOrtyQBh9R-swFK04Qazgt8wMmOZDvQMRfXNHz_fI2mCzBsIfFGLiWA7_VrJBwv-_m3N2SIFl2QG91owEITnTx3uRuYFUErqr2-V6uoETZEervE10-KjZnaRVOSOxb_0WszoKdd5KhXzIzpey3b0jXY_pfMJeUFbmNrH6WNqVNEbay79QKmRV0gi_5k7bFzsjco9NXyRUof1FD7u3BUhFlcwoCcmuNk5Kc6b4TG5ciUZlInvDiv11VyTnGAKgCMLxHgyItVxM2mIPcF65YMjlS5Y-HxA1WwZvTrJ6XvCXvi7qazR2QtNkaG61T4MwfwW2wX5FKe4oh6CCaKCaYrzbFDfRgQGO2gWJ8"
      },
      body: json.encode(parameters),
    );
  } on Exception catch (error) {
    if (error.toString().contains('SocketException')) {
      //  showToast('Error occured while communicating with Server!',
      //    isError: true);
      throw new FetchDataException(
          'Error occured while communicating with Server!');
    }
  }
  updateReqTime();
  return response;
}

Future<http.Response> deleteRequest(String endpoint) async {
  print("URL :: $API_HOST + $apiPath + $endpoint");
  var response;
  try {
    response = await http.delete(
      Uri.parse(API_HOST + apiPath + endpoint),
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWU5N2E5MWYxYWYxZWM4OWU4NWJhMWZkYjkzYjlhOGU1MjNjMmUwMWQ5YjA4ODJmMGI5MmU0NWE0ZDk5YTk4Y2ViNzdhNTMxYTI0ZGM4NzYiLCJpYXQiOjE2ODQ5OTY2ODguNDAxNTk2LCJuYmYiOjE2ODQ5OTY2ODguNDAxNjAxLCJleHAiOjE3MTY2MTkwODguMzg3OTc4LCJzdWIiOiI1NSIsInNjb3BlcyI6WyJmcm9udHVzZXIiXX0.mvB7sIusDS0DGY90jBehnvcGGtpAp5soDrTPL-TX-AKyMKC9mSc1OT1SxkRL_FnxEKqjh0Ml1uOapVqcEGKY1NbK0qn3BsgbGQm_i7JvMBfiNbKjm66N6qG8_IHrarxmAhLMTAs7L2SWrYfyiFMar7ZoMZmZALTfymU-wyaVR18x0dCHvgVt3upuwZnP9IaCf1kLfeoW-pbyBKdfP7WF_niP-xL2EBpaYJy8iAHd0A-QyEDF1ypWyGjTbD_E07MrHCDW1b8UWXn1430wrlznfXVV4E6TzV2WRB7mPE_FUGntlwIkvuCJjR5CrFDmSajMkcpg2FAImJOrtyQBh9R-swFK04Qazgt8wMmOZDvQMRfXNHz_fI2mCzBsIfFGLiWA7_VrJBwv-_m3N2SIFl2QG91owEITnTx3uRuYFUErqr2-V6uoETZEervE10-KjZnaRVOSOxb_0WszoKdd5KhXzIzpey3b0jXY_pfMJeUFbmNrH6WNqVNEbay79QKmRV0gi_5k7bFzsjco9NXyRUof1FD7u3BUhFlcwoCcmuNk5Kc6b4TG5ciUZlInvDiv11VyTnGAKgCMLxHgyItVxM2mIPcF65YMjlS5Y-HxA1WwZvTrJ6XvCXvi7qazR2QtNkaG61T4MwfwW2wX5FKe4oh6CCaKCaYrzbFDfRgQGO2gWJ8"
      },
      //body: json.encode(parameters),
    );
  } on Exception catch (error) {
    if (error.toString().contains('SocketException')) {
      //  showToast('Error occured while communicating with Server!',
      //    isError: true);
      throw new FetchDataException(
          'Error occured while communicating with Server!');
    }
  }
  updateReqTime();
  return response;
}

Future<dynamic> getRequest(String endpoint,
    {bool isUrl = true, var apiPath = ""}) async {
  var response;
  //final url = isUrl ? endpoint : API_HOST + apiPath + endpoint;
  try {
    // if (Platform.isIOS) {
    //   const iosHttp = const MethodChannel('com.wbbtv/http');
    //   final result = await iosHttp.invokeMapMethod('get', {
    //     'url': url,
    //     'method': 'GET',
    //     'headers': {
    //       "CUSTOMERID": CUSTOMER_ID,
    //       "Authorization": User.shared.accessToken
    //     },
    //   });
    //   return ReturnData(json.encode(result));
    // }

    isUrl
        ? print("Requesting :: $endpoint")
        : print("Requesting :: $API_HOST + $apiPath + $endpoint");
    //  endpoint = endpoint.replaceAll("192.168.18.8:3000", "3a5dc047.ngrok.io");
    response = await http.get(
      isUrl ? Uri.parse(endpoint) : Uri.parse(API_HOST + apiPath + endpoint),
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWU5N2E5MWYxYWYxZWM4OWU4NWJhMWZkYjkzYjlhOGU1MjNjMmUwMWQ5YjA4ODJmMGI5MmU0NWE0ZDk5YTk4Y2ViNzdhNTMxYTI0ZGM4NzYiLCJpYXQiOjE2ODQ5OTY2ODguNDAxNTk2LCJuYmYiOjE2ODQ5OTY2ODguNDAxNjAxLCJleHAiOjE3MTY2MTkwODguMzg3OTc4LCJzdWIiOiI1NSIsInNjb3BlcyI6WyJmcm9udHVzZXIiXX0.mvB7sIusDS0DGY90jBehnvcGGtpAp5soDrTPL-TX-AKyMKC9mSc1OT1SxkRL_FnxEKqjh0Ml1uOapVqcEGKY1NbK0qn3BsgbGQm_i7JvMBfiNbKjm66N6qG8_IHrarxmAhLMTAs7L2SWrYfyiFMar7ZoMZmZALTfymU-wyaVR18x0dCHvgVt3upuwZnP9IaCf1kLfeoW-pbyBKdfP7WF_niP-xL2EBpaYJy8iAHd0A-QyEDF1ypWyGjTbD_E07MrHCDW1b8UWXn1430wrlznfXVV4E6TzV2WRB7mPE_FUGntlwIkvuCJjR5CrFDmSajMkcpg2FAImJOrtyQBh9R-swFK04Qazgt8wMmOZDvQMRfXNHz_fI2mCzBsIfFGLiWA7_VrJBwv-_m3N2SIFl2QG91owEITnTx3uRuYFUErqr2-V6uoETZEervE10-KjZnaRVOSOxb_0WszoKdd5KhXzIzpey3b0jXY_pfMJeUFbmNrH6WNqVNEbay79QKmRV0gi_5k7bFzsjco9NXyRUof1FD7u3BUhFlcwoCcmuNk5Kc6b4TG5ciUZlInvDiv11VyTnGAKgCMLxHgyItVxM2mIPcF65YMjlS5Y-HxA1WwZvTrJ6XvCXvi7qazR2QtNkaG61T4MwfwW2wX5FKe4oh6CCaKCaYrzbFDfRgQGO2gWJ8"
      },
    );
    print({
      "Content-Type": "application/json",
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWU5N2E5MWYxYWYxZWM4OWU4NWJhMWZkYjkzYjlhOGU1MjNjMmUwMWQ5YjA4ODJmMGI5MmU0NWE0ZDk5YTk4Y2ViNzdhNTMxYTI0ZGM4NzYiLCJpYXQiOjE2ODQ5OTY2ODguNDAxNTk2LCJuYmYiOjE2ODQ5OTY2ODguNDAxNjAxLCJleHAiOjE3MTY2MTkwODguMzg3OTc4LCJzdWIiOiI1NSIsInNjb3BlcyI6WyJmcm9udHVzZXIiXX0.mvB7sIusDS0DGY90jBehnvcGGtpAp5soDrTPL-TX-AKyMKC9mSc1OT1SxkRL_FnxEKqjh0Ml1uOapVqcEGKY1NbK0qn3BsgbGQm_i7JvMBfiNbKjm66N6qG8_IHrarxmAhLMTAs7L2SWrYfyiFMar7ZoMZmZALTfymU-wyaVR18x0dCHvgVt3upuwZnP9IaCf1kLfeoW-pbyBKdfP7WF_niP-xL2EBpaYJy8iAHd0A-QyEDF1ypWyGjTbD_E07MrHCDW1b8UWXn1430wrlznfXVV4E6TzV2WRB7mPE_FUGntlwIkvuCJjR5CrFDmSajMkcpg2FAImJOrtyQBh9R-swFK04Qazgt8wMmOZDvQMRfXNHz_fI2mCzBsIfFGLiWA7_VrJBwv-_m3N2SIFl2QG91owEITnTx3uRuYFUErqr2-V6uoETZEervE10-KjZnaRVOSOxb_0WszoKdd5KhXzIzpey3b0jXY_pfMJeUFbmNrH6WNqVNEbay79QKmRV0gi_5k7bFzsjco9NXyRUof1FD7u3BUhFlcwoCcmuNk5Kc6b4TG5ciUZlInvDiv11VyTnGAKgCMLxHgyItVxM2mIPcF65YMjlS5Y-HxA1WwZvTrJ6XvCXvi7qazR2QtNkaG61T4MwfwW2wX5FKe4oh6CCaKCaYrzbFDfRgQGO2gWJ8"
    });

    /* try {
      Dio dio = new Dio();
      print("$CUSTOMER_ID ,${User.shared.accessToken}");
      dio.options.headers['CUSTOMERID'] = CUSTOMER_ID;
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers["Authorization"] = User.shared.accessToken;
      response =
          await dio.get(isUrl ? endpoint : API_HOST + apiPath + endpoint);
      print("-------------------------------------------");
      print(
          "isUrl  $isUrl  endpoint $endpoint  API_HOST + apiPath + endpoint ${API_HOST + apiPath + endpoint}");

      print({
        "CUSTOMERID": CUSTOMER_ID,
        "Content-Type": "application/json",
        "Authorization": User.shared.accessToken
      });
      print("${response.toString()}");
      return ReturnData(response.toString());
    } on DioError catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return error.response;
    }*/
  } on Exception catch (error) {
    if (error.toString().contains('SocketException')) {
      //  showToast('Error occured while communicating with Server!',
      //    isError: true);
      throw new FetchDataException(
          'Error occured while communicating with Server!');
    }
  }
  updateReqTime();
  // print("\n\n______DIO Response Start______________________________\n\n");
  // print("\n\n______${response.toString()}___________________________\n\n");
  // print("\n\n______DIO Response End_____________________\n\n");
  // isUrl
  //     ? print("URL :: $endpoint + $CUSTOMER_ID")
  //     : print("URL :: $API_HOST + $apiPath + $endpoint");
  // print(response.body.toString());
  // print("\n\n______________******************______________\n\n");
  // return ReturnData(response.toString());
  return response;
}

Future<http.Response> getAppConfig(String endpoint, String appToken) async {
  var response;
  // print("appconfigData = appconfigData "+appconfigData.body.toString());

  // if (appconfigData != null) {
  //   return appconfigData;
  // }

  try {
    response = await http.get(
      Uri.parse(API_HOST + apiPath + endpoint),
      headers: {"Content-Type": "application/json", "Authorization": appToken},
    );
  } on Exception catch (error) {
    if (error.toString().contains('SocketException')) {
      //  showToast('Error occured while communicating with Server!',
      //    isError: true);
      throw new FetchDataException(
          'Error occured while communicating with Server!');
    }
  }

  return response;
}

void updateReqTime() async {}
