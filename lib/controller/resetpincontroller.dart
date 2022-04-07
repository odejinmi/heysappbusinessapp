import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/constant.dart';
import '../request/apis.dart';
import '../view/auth/signin/signin.dart';
import '../view/auth/verification.dart';

class Resetpincontroller extends GetxController {
  var isLoading = false.obs;
  var buttonposition = false.obs;

  var emailController = TextEditingController().obs;
  var emailController1 = TextEditingController().obs;
  // var size = Size.obs;
  var left=2.0.obs,right=0.0.obs;
  var formKey = GlobalKey<FormState>().obs;
  var obscureText = true.obs;
  var obscureText1 = true.obs;
  void toggle() {
      obscureText.value = !obscureText.value;
  }

  void toggle1() {
      obscureText.value = !obscureText.value;
  }
  @override
  void onInit(){
    super.onInit();
    // step.value = 0;
  }

  void initiate(context) async {
    String res;

      isLoading.value = true;

    var jsonBody = {
      "oldpin":emailController.value.text,
      "newpin": emailController1.value.text
    };

    res = await changepin(jsonBody);

      isLoading.value = false;

    var cmddetails = jsonDecode(res);

    if (cmddetails['success']) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Signin();
          },
        ),
      );
    } else {
      if (cmddetails['message'] != "No internet connection") {
        showCommonError(cmddetails['message'], context);
      }
    }
  }

}