// import 'dart:io';

// import 'dart:convert';

// /* Future<Map> loginWithParameters(Map parameters) async {
//   var response = await postRequest('login', parameters);
//   var responseData = jsonDecode(response.body);

//   print('loginWithParameters' + responseData.toString());
//   if (responseData['response'] != null) {
//     User.shared.username = parameters['username'];
//     User.shared.name = responseData['response']['name'];
//     User.shared.id = responseData['response']['id'];
//     User.shared.accessToken = responseData['response']['user_token'];
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString('user_name', User.shared.username);
//     prefs.setString('user_pwd', parameters['password']);
//     /*  mixpanel.identifyPeople(User.shared.id);
//     mixpanel.setPeopleProperties({"\$email": User.shared.username}); */
//     return {"status": "success", "message": "Logged in successfully"};
//   } else if (responseData['error'] != null) {
//     return {"status": "failed", "message": responseData['error']['message']};
//   } else {
//     return {"status": "failed", "message": "Login failed!"};
//   }
// }

// Future<Map> registerWithParameters(Map parameters) async {
//   var response = await postRequest('register', parameters);
//   var responseData = jsonDecode(response.body);
//   print('parameters $parameters');
//   if (responseData['status'] != null) {
//     User.shared.username = parameters['username'];
//     //User.shared.name = responseData['response']['name'];
//     // User.shared.id = responseData['response']['id'];
//     // User.shared.accessToken = responseData['response']['user_token'];
//     return responseData;
//   } else if (responseData['error'] != null) {
//     return {"status": "failed", "message": responseData['error']['message']};
//   } else {
//     return {"status": "failed", "message": "Some error occoured!"};
//   }
// }

// Future<Map> loginWithFacebook(Map parameters) async {
//   var response = await postRequest('social-login', parameters);

//   var responseData = jsonDecode(response.body);

//   print(responseData);
//   print("IN LOGIN WITH FACEBOOK..................................................");
//   print(responseData['response']);
//   print(responseData['response']['name']);
//   if (responseData['response'] != null) {
//     User.shared.username =
//         responseData['response']['name']; //parameters['username'];
//     User.shared.name = responseData['response']['name'];
//     User.shared.id = responseData['response']['userid'];
//     User.shared.accessToken = responseData['response']['user_token'];
//     AccountProvider().getAccount();

//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString('user_name', User.shared.username);
//     prefs.setString('user_pwd', parameters['token']);
//     prefs.setString('loginType', "facebook");
//     return {"status": "success", "message": "Logged in successfully"};
//   } else if (responseData['error'] != null) {
//     return {"status": "failed", "message": responseData['error']['message']};
//   } else {
//     return {"status": "failed", "message": "Login failed!"};
//   }
// }

// Future<Map> registerWithFacebook(Map parameters) async {
//   var response = await postRequest('social-register', parameters);
//   var responseData = jsonDecode(response.body);
//   print('parameters $parameters');
//   print('responseData for facebook.............. $responseData');
//   if (responseData['user_token'] != null) {
//     User.shared.accessToken = responseData['user_token'];
//     return responseData;
//   } else if (responseData['error'] != null) {
//     return {"status": "failed", "message": responseData['error']['message']};
//   } else {
//     return {"status": "failed", "message": "Some error occoured!"};
//   }
// }

// Future<Map> updateWatchListData(Map parameters) async {
//   var response = await postRequest('mylist', parameters);

//   var responseData = jsonDecode(response.body);
//   if (responseData["error"] != null) {
//     responseData["message"] = responseData["error"]["message"];
//   }
//   WatchlistProvider().getWatchlist();
//   return responseData;
// }

// // Future<Map> getSubCatalouge(String catalougeId) async {
// //   var url = catalougeId.replaceAll("/v1/", "/v2/");
// //   var response = await getRequest('sub-catalogue',url, {apiPath: apiPath.replaceAll("/v1/", "/v2/")});
// //   var responseData = jsonDecode(response.body);
// //   print("SubCatalouge   *******$responseData ");
// //   return responseData;
// //}
//  */
// /* Future<Map> requestGods() async {
//   // var number = parameters['number'];
//   var response = await getRequest("bipin/gods", isUrl: false);
//   var responseData = jsonDecode(response.body);
//   if (responseData['data'] != null) {
//     var temp = God.fromJson(responseData);
//     print(temp);

//     // listCat = temp.data.gods as List<GodElement>;
//     print(listCat);
//     return {
//       "success": true,
//       "message": "gods fetched",
//       "category": responseData['data']
//     };
//   } else if (responseData['error'] != null) {
//     return {"success": false, "message": responseData['error']['message']};
//   } else {
//     return {"success": false, "message": "fetching failed!"};
//   }
// }
//  */
// Future<Map> requestGodsOnly() async {
//   // var number = parameters['number'];
//   var response = await getRequest("bipin/gods/sorted", isUrl: false);
//   var responseData = jsonDecode(response.body);
//   if (responseData['data'] != null) {
//     var temp = GodOnly.fromJson(responseData);
//     print(temp);

//     listCat = temp.data.gods as List<GodOnlyElement>;
//     print(listCat);
//     return {
//       "success": true,
//       "message": "gods fetched",
//       "category": responseData['data']
//     };
//   } else if (responseData['error'] != null) {
//     return {"success": false, "message": responseData['error']['message']};
//   } else {
//     return {"success": false, "message": "fetching failed!"};
//   }
// }

// Future<Map> getStotra(var id) async {
//   var response = await getRequest("bipin/stotras/byid/$id", isUrl: false);

//   var responseData = jsonDecode(response.body);
//   // responseData = {
//   //   "response": {
//   //     "url":
//   //         "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
//   //   }
//   // };
//   if (responseData['data'] != null) {
//     return {
//       "success": true,
//       "message": "gods fetched",
//       "sloka": responseData['data']["stotras"]["sloka"]
//     };
//   } else if (responseData['error'] != null) {
//     return {"success": false, "message": responseData['error']['message']};
//   } else {
//     return {"success": false, "message": "fetching failed!"};
//   }
// }

// Future<Map> getData() async {
//   var response = await getRequest("bipin/gods", isUrl: false);

//   var responseData = jsonDecode(response.body);
//   // responseData = {
//   //   "response": {
//   //     "url":
//   //         "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
//   //   }
//   // };
//   return responseData;
// }

// Future<Map> getSearch(String href) async {
//   var a = "searchvideo?query=$href";
//   var response = await getRequest(a, isUrl: false);

//   var responseData = jsonDecode(response.body);
//   // responseData = {
//   //   "response": {
//   //     "url":
//   //         "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
//   //   }
//   // };
//   return responseData;
// }

// /*
// Future<Map> resetUserPassword(String email) async {
//   var response = await postRequest('reset', {'email': email});

//   var responseData = jsonDecode(response.body);
//   return responseData;
// }

// Future<Map> updateUserPassword(String currentPwd, String newPwd) async {
//   var response = await postRequest(
//       'change-password', {'oldPassword': currentPwd, 'password': newPwd});
//   var responseData = jsonDecode(response.body);

//   if (responseData['status'] == 200) {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString('user_pwd', newPwd);
//   }
//   return responseData;
// }

// Future<Map> updateProfileWithParameters(Map parameters) async {
//   var response = await patchRequest('update-profile', parameters);

//   var responseData = jsonDecode(response.body);
//   print('responseData $responseData');
//   if (responseData['status'] != null) {
//     if ((responseData['status'] == 200)) {
//       User.shared.name =
//           parameters['first_name'] + ' ' + parameters['last_name'];
//     }
//     return {
//       "status": responseData['status'],
//       "message": responseData['message'] != null
//           ? responseData['message']
//           : (responseData['status'] == 200
//               ? "Updated successfully"
//               : "Updation failed!")
//     };
//   } else if (responseData['error'] != null) {
//     return {"status": "failed", "message": responseData['error']['message']};
//   } else {
//     return {"status": "failed", "message": "Some error occoured!"};
//   }
// }

// Future<Map> deleteUser() async {
//   var response = await deleteRequest('delete-user');

//   var responseData = jsonDecode(response.body);
//   return responseData;
// }
// // Future<String> getCachedAppToken() async {
// //   getAppToken();
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   appToken = prefs.get('apptoken');
// //   return appToken == null ? getAppToken() : appToken;
// // }
//  */
// Future<String> getAppToken() async {
//   var response = await postRequest(
//       'get-token', {"platform": PLATFORM, "customerId": CUSTOMER_ID});
//   print(
//       " \n\n\n•••••••••••••••••getAppToken responseData ${response.toString()}\n\n\n•••••••••••••••••");

//   var responseData = jsonDecode(response.body);
//   appToken = responseData['token'];
//   return responseData['token'];
// }

// /* Future<String> addComeceroSubscription(String slugName) async {
//   var response = await postRequest('add-subscription', {"slug_name": slugName});
//   var responseData = jsonDecode(response.body);
//   print("url = " + responseData.toString());
//   return responseData['url'];
// }
//  */
// Future<Object> getCachedConfigParameters(String token) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   final configData = prefs.get('appconfig');
//   if (configData != null) {
//     final cachedConfigData = jsonDecode(configData.toString());
//     setAppConfigData(cachedConfigData);
//   }

//   getAppConfigParameters(appToken);
//   return configData == null
//       ? getAppConfigParameters(appToken)
//       : configData.toString();
// }

// Future<dynamic> getAppConfigParameters(String token) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();

//   var response = await getAppConfig('appconfig', token);

//   var responseData = jsonDecode(response.body);

//   print("responseData $responseData");

//   if (responseData['response'] != null) {
//     prefs.setString("appconfig", response.body);
//     setAppConfigData(responseData);

//     // REGULAR_CAROUSAL_ID = responseData['response']['regular_carousel'];
//     // FEATURED_CAROUSAL_ID = responseData['response']['featured_carousel'];
//     // API_HOST = responseData['response']['base_url'];
//   }
//   // if (responseData['regular_carousel_id']!= null) {
//   //   REGULAR_CAROUSAL_ID = responseData['regular_carousel_id'];
//   //   FEATURED_CAROUSAL_ID = responseData['large_carousel_id'];
//   //   API_HOST = responseData['base_url'];
//   //   CUSTOMER_ID = responseData['customerId'];
//   //   appBarColor = HexColor(responseData['app_title_color']);
//   //   appBgColor = HexColor(responseData['app_background_color']);
//   //   thumbnailBgColor = HexColor(responseData['thumbnail_background_color']);

//   // }
//   return responseData;
// }

// /*
// void updateDeviceId() async {
//   await postRequest('device', {
//     "deviceId": pushToken,
//     "platform": (Platform.isIOS) ? "iOS" : "Android"
//   });
//   // var responseData = jsonDecode(response.body);
//   // print(responseData.toString());
// }

// Future<Map> getPackages(String href) async {
//   var response = await getRequest('packages');

//   var responseData = jsonDecode(response.body);

//   return responseData;
// }

// Future<Map> cancelSubscription(Map parameters) async {
//   var response = await postRequest('cancel-subscription', parameters);
//   var responseData = jsonDecode(response.body);
//   print("Cancel url = " + responseData.toString());
//   return responseData;
// }
//  */
// void setAppConfigData(dynamic responseData) {
//   //REGULAR_CAROUSAL_ID = responseData['response']['regular_carousel_id'];
//   // REGULAR_CAROUSAL_ID = responseData['response']['new_regular_carousels_id'];
//   REGULAR_CAROUSAL_ID = responseData['response']['regular_carousel'];
//   // featured_carousal_id = responseData['response']['featured_carousal_id'];
//   print("((((_______________");
//   print(REGULAR_CAROUSAL_ID);
//   selectedFilterId = REGULAR_CAROUSAL_ID;
//   loadingText = responseData['response']['loading_text'];

//   print("REGULAR_CAROUSAL_ID: $selectedFilterId");
//   FEATURED_CAROUSAL_ID = responseData['response']['large_carousel_id'];
//   print("FEATURED_CAROUSAL_ID: $FEATURED_CAROUSAL_ID");
//   //API_HOST = responseData['response']['base_url'];
//   // CUSTOMER_ID = responseData['response']['customerId'];
//   if (responseData['response']['disable_ios_subscription'] != null) {
//     disableIOSSubscription =
//         responseData['response']['disable_ios_subscription'] == "true"
//             ? true
//             : false;
//   }
//   if (responseData['response']['enable_thumbnail_title'] != null) {
//     enableThumbnailTitle =
//         responseData['response']['enable_thumbnail_title'] == "true"
//             ? true
//             : false;
//   }
//   print("CUSTOMER_ID: $CUSTOMER_ID");

//   // appBarColor = HexColor(responseData['response']['app_title_color']);
//   //appBgColor = HexColor(responseData['response']['app_background_color']);
//   //thumbnailBgColor =
//   //    HexColor(responseData['response']['thumbnail_background_color']);
//   // backgroundAssetUrl = responseData['response']['login_bg_asset'];
//   // print("backgroundAssetUrl $backgroundAssetUrl");
//   // backgroundType = responseData['response']['login_background_type'];
//   // print("backgroundType $backgroundType");
// }

// class ReturnData {
//   String body;
//   ReturnData(this.body);
// }

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
