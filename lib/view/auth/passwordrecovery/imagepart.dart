import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/passwordrecoverycontroller.dart';

class Imagepart extends StatelessWidget {
final passwordrecoverycontroller = Get.put(Passwordrecoverycontroller());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: GetX<Passwordrecoverycontroller>(
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "Password Recovery",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 27),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter Your ${controller.buttonposition.value?'Email Address':'Phone Number'} \n"
                  "To Recover Your Password",
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          }
        )
    );
  }
}
