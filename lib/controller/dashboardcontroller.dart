import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/constant/constant.dart';

import '../model/countrylistparser.dart';
import '../request/apis.dart';

class Dashboardcontroller extends GetxController {
  var isLoading = false.obs;
  var selected= 2.obs;
  var width = 0.0.obs;
  @override
  void onInit(){
    super.onInit();
    // Timer(const Duration(seconds: 1), () async {
    //   Get.dialog(
    //       Container(
    //         height: 100,
    //         margin: const EdgeInsets.symmetric(horizontal: 20),
    //         child: Scaffold(
    //           body: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               Row(
    //                 children: [
    //                   const Spacer(),
    //                   GestureDetector(
    //                     child: Image.asset("assets/img/cancel.png",
    //                       height: 37, width: 37,
    //                     ),
    //                     onTap: (){
    //                       Get.back();
    //                     },
    //                   ),
    //                 ],
    //               ),
    //               Image.asset("assets/img/startselling.png",
    //                 height: 60, width: 60,
    //               ),
    //               const SizedBox(height: 10,),
    //               const Text("Start Selling"),
    //               const SizedBox(height: 10,),
    //               const Text("Add products to start selling"),
    //               const SizedBox(height: 30,),
    //               Container(
    //                 height: 30,
    //                 width: width.value,
    //                 decoration: const BoxDecoration(
    //                     color: primarycolour,
    //                     borderRadius: const BorderRadius.all(Radius.circular(10))
    //                 ),
    //                 child: const Text("Add first product",
    //                   style: const TextStyle(color: Colors.white),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       )
    //   );
    // });
  }


}