import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/constant.dart';
import '../model/countrylistparser.dart';
import '../request/apis.dart';
import '../view/auth/signin/signin.dart';

class Passcodecontroller extends GetxController {
  var emailController = TextEditingController().obs;
  int pinLength = 6;
  var isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }


  void initiate() async {
    String res;


      isLoading.value = true;
    var jsonBody = {
      "email": email,
      "username":username,
      "country":"1",
      "phone":phonenumber,
      "referrer":referrer,
      "password":password,
      "pin": pin,
      "dob": dob,
      "code":otpcode
    };

    res = await register(jsonBody);


      isLoading.value = false;

    var cmddetails = jsonDecode(res);

    if (cmddetails['success']) {
      Get.to(()=> Signin());
    } else {
      if (cmddetails['message'] != "No internet connection") {
        // showCommonError(cmddetails['message'], context);
      }
    }
  }

}