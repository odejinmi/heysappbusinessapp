import 'dart:convert';

import 'package:intl/intl.dart';

import '../constant/custom_alert_dialog.dart';
import 'array_parser.dart';
import 'method.dart';

Future<String> sendcode(jsonBody) async {
  const endpoint = "sendcode";
  return await postApiCall( jsonBody, endpoint);
}

Future<String> register(jsonBody) async {
  const endpoint = "register";
  return await postApiCall( jsonBody, endpoint);
}

Future<String> login(jsonBody) async {
  const endpoint = "login";
  return await postApiCall( jsonBody, endpoint);
}

Future<String> loginwpin(jsonBody) async {
  const endpoint = "loginwpin";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> forgetpasswordrequest(jsonBody) async {
  const endpoint = "forgot-password-request";
  return await postApiCall( jsonBody, endpoint);
}

Future<String> forgetpassword(jsonBody) async {
  const endpoint = "forgot-password";
  return await postApiCall( jsonBody, endpoint);
}

Future<String> changepin(jsonBody) async {
  const endpoint = "change-pin";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> newsfeed() async {
  const endpoint = "newsfeed";
  return await getApiCallTokenized(endpoint);
}
Future<String> getcountries() async {
  const endpoint = "countries";
  return await getApiCall(endpoint);
}

Future<String> createnewsfeed(jsonBody) async {
  const endpoint = "newsfeed";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> postverification(jsonBody) async {
  const endpoint = "verification";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> fetchatmcards() async {
  const endpoint = "atmcards";
  return await getApiCallTokenized(endpoint);
}

Future<String> fetchmybanks() async {
  const endpoint = "mybanks";
  return await getApiCallTokenized(endpoint);
}

Future<String> fetchverification() async {
  const endpoint = "verification";
  return await getApiCallTokenized(endpoint);
}

Future<String> addverification(jsonBody) async {
  const endpoint = "verification";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> addmybank(jsonBody) async {
  const endpoint = "addmybank";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> addatm(jsonBody) async {
  const endpoint = "addatm";
  return await postApiCallTokenized( jsonBody, endpoint);
}

Future<String> listallbanks() async {
  const endpoint = "banklist";
  return await getApiCallTokenized(endpoint);
}





showCommonError(message, context) {
  CustomAlertDialogloader(
      context: context,
      title: "Whoops!!",
      message: message,
      negativeBtnText: 'Dismiss',
      onPostivePressed: () {},
      onNegativePressed: () {});
}

showCommonSuccess(message, context) {
  CustomAlertDialogloader(
      context: context,
      title: "Hurray!!!",
      message: message,
      negativeBtnText: 'Dismiss',
      onPostivePressed: () {},
      onNegativePressed: () {});
}
