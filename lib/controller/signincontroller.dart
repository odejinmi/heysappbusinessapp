import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/view/dashboard/dashboard.dart';

import '../constant/constant.dart';
import '../request/apis.dart';
import '../request/env_variable.dart';

class Signincontroller extends GetxController {
  var isLoading = false.obs;
  var buttonposition = false.obs;
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  // var size = Size.obs;
  var formKey = GlobalKey<FormState>().obs;
  @override
  void onInit(){
    super.onInit();
    // step.value = 0;
  }

  void initiate(context) async {
    String res;


      isLoading.value = true;
    var jsonBody = {
      "username":emailController.value.text,
      "password": passwordController.value.text.replaceAll(" ", "")
    };
    res = await login(jsonBody);


      isLoading.value = false;

    var cmddetails = jsonDecode(res);

    if (cmddetails['success']) {
      token = cmddetails['token'];
      email = cmddetails['data']['email'];
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.setString('token', cmddetails['token']);
      Get.to(()=> Dashboard());
      Get.deleteAll();
    } else {
      if (cmddetails['message'] != "No internet connection") {
        showCommonError(cmddetails['message'], context);
      }
    }
  }

}