import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/constant.dart';
import '../request/apis.dart';
import '../view/auth/verification.dart';

class Personalinfocontroller extends GetxController {
  var isLoading = false.obs;
  var buttonposition = false.obs;

  var emailController = TextEditingController().obs;
  var referralController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var confirmpasswordController = TextEditingController().obs;
  // var size = Size.obs;
  var left=2.0.obs,right=0.0.obs;
  var formKey = GlobalKey<FormState>().obs;
  @override
  void onInit(){
    super.onInit();
    // step.value = 0;
  }

  void initiate() async {
    String res;


      isLoading.value = true;
    var jsonBody = {
      "emailphone":emailController.value.text,
      "type": buttonposition.isTrue?"email":"phone"
    };

    res = await sendcode(jsonBody);


      isLoading.value = false;

    var cmddetails = jsonDecode(res);

    if (cmddetails['success']) {
      otpcode = cmddetails['data'];
      isemail = buttonposition.value;
      if (buttonposition.value) {
        email = emailController.value.text;
      }else{
        phonenumber = emailController.value.text;
      }
      Get.to( ()=>Verification());
    } else {
      if (cmddetails['message'] != "No internet connection") {
        // showCommonError(cmddetails['message'], context);
      }
    }
  }

}