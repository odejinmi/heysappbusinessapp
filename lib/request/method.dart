import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../constant/constant.dart';
import '../constant/nointernet.dart';
import 'env_variable.dart';


var onFailure = '{"success":false,"message":"No internet connection"}';

Future<String> getApiCall(endpoint) async {
  var res = onFailure;

  try {
    http.Response response = await http.get(parseURL(endpoint), headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token"
    });

    res = response.body;
    if (debug) {
      print(res);
    }
  } on Exception {

    nointernetfunction();

    if (debug) {
      print(Exception);
    }
  }
  return res;
}

Future<String> getApiCallTokenized( endpoint) async {
  var res = onFailure;
  try {
    http.Response response = await http.get(parseURL(endpoint), headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token"
    });

    res = response.body;
    if (debug) {
      print("method: $res");
    }

    if (response.statusCode == 401 || response.statusCode == 403) {
      // Get.offAll(()=>Signin());
    }
  } on Exception {
    nointernetfunction();

    if (debug) {
      print(Exception);
    }
  }
  return res;
}

Future<String> postApiCall( jsonBody, endpoint) async {
  var res = onFailure;

  if (debug) {
    print(jsonBody);
  }

  try {
    http.Response response = await http.post(
      parseURL(endpoint),
      body: jsonBody,
    );

    res = response.body;
    if (debug) {
      print("method: $res");
    }
  } on Exception {

    nointernetfunction();

    if (debug) {
      print(Exception);
    }
  }
  return res;
}

Future<String> postApiCallTokenized(jsonBody, endpoint) async {
  var res = onFailure;

  if (debug) {
    print(jsonBody);
  }

  try {
    http.Response response = await http.post(
      parseURL(endpoint),
      body: jsonBody,
      headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
    );
    res = response.body;
    if (debug) {
      print("method: $res");
    }
    if (response.statusCode == 401 || response.statusCode == 403) {
      // Get.offAll(()=>Signin());
    }
  } on Exception {
    nointernetfunction();

    if (debug) {
      print(Exception);
    }
  }
  return res;
}
void nointernetfunction(){
  Get.bottomSheet(
      Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            color: Colors.white,
          ),
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: SizedBox(
                height: 700,
                child: Nointernet(),
              ))
      )
  );
}