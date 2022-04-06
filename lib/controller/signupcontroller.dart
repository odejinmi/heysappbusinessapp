import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/constant.dart';
import '../view/auth/verification.dart';
import '../request/apis.dart';

class Signupcontroller extends GetxController {
  var isLoading = false.obs;
  var buttonposition = false.obs;
  var emailController = TextEditingController().obs;
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

  Timer? timer;
  var start = 60.obs;
  var minute = 1.obs;
  var timeout = false.obs;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start.value == 0) {
          if (minute.value != 0) {
            minute -= 1;
            start.value = 60;
          }else {
            timeout.value = true;
            timer.cancel();
          }
        } else {
          start.value--;
        }
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
    // step.value = 0;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    // step.value = 0;
    super.onClose();
  }

  // void validatecode(context) async {
  //
  //   String res;
  //
  //
  //   isLoading.value = true;
  //   var jsonBody = {
  //     "code": otp.value.text,
  //     "emailphone": emailController.value.text,
  //     "type": "email",
  //   };
  //
  //   res = await verifyCode(jsonBody);
  //
  //
  //   isLoading.value = false;
  //
  //   var cmddetails = jsonDecode(res);
  //
  //   if (cmddetails['success']) {
  //     if (inappsignup.isTrue) {
  //       Get.deleteAll();
  //       Get.to(() => Meetingdashboard());
  //     } else {
  //       Get.deleteAll();
  //       Get.to(() => Dashboard());
  //     }
  //   } else {
  //     if (cmddetails['message'] != "No internet connection") {
  //       showCommonError(cmddetails['message'], context);
  //     }
  //   }
  // }
}