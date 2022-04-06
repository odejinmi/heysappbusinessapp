import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/countrylistparser.dart';
import '../constant/constant.dart';
import '../request/apis.dart';

class Verificationcontroller extends GetxController {
  var isLoading = false.obs;
  var change = false.obs, show = false.obs, create = true.obs;
  var emailController = TextEditingController().obs;
  Timer? _timer;
  var start = 60.obs;
  var minute = 1.obs;
  var timeout = false.obs;

  @override
  void onInit(){
    super.onInit();
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer!.cancel();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start == 0) {
            if (minute != 0) {
              minute -= 1;
              start.value = 60;
            }else {
              timeout.value = true;
              timer.cancel();
            }
        } else {
            start--;
        }
      },
    );
  }
  var selected = 0.obs;
  List<Countrylistparser> originList = [];
  void initiate() async {
    String res;

      timeout.value = false;
      isLoading.value = true;
    var jsonBody = {
      "emailphone":isemail?email:phonenumber,
      "type": isemail?"email":"phone"
    };

    res = await sendcode(jsonBody);


      isLoading.value = false;


    var cmddetails = jsonDecode(res);

    if (cmddetails['success']) {

        start.value = 60;
        minute.value = 1;
        otpcode = cmddetails['data'];
      startTimer();
    } else {
      if (cmddetails['message'] != "No internet connection") {
        // showCommonError(cmddetails['message'], context);
      }
    }
  }
}