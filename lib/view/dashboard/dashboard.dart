import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/constant/constant.dart';
import 'package:heysappbusiness/controller/dashboardcontroller.dart';
import 'package:heysappbusiness/view/dashboard/bottomnavigator.dart';
import 'package:heysappbusiness/view/dashboard/overview.dart';
import 'package:heysappbusiness/view/profile/transacthistory.dart';

import '../order/orders.dart';

class Dashboard extends StatelessWidget {
    final dashboardcontroller = Get.put(Dashboardcontroller());
  @override
  Widget build(BuildContext context) {
    dashboardcontroller.width.value = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GetX<Dashboardcontroller>(
            builder: (controller) {
              return Column(
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Orders",
                                  style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Text("3",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            indicator(controller.selected, 1),
                          ],
                        ),
                        onTap: (){
                          controller.selected.value = 1;
                        },
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Column(
                          children: [
                            const Text("Overview",
                              style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.w400),
                            ),
                            indicator(controller.selected, 2),
                          ],
                        ),
                        onTap: (){
                          controller.selected.value = 2;
                        },
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Column(
                          children: [
                            const Text("History",
                              style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.w400),
                            ),
                            indicator(controller.selected, 3),
                          ],
                        ),
                        onTap: (){
                          controller.selected.value = 3;
                        },
                      ),
                    ],
                  ),
                  Visibility(
                    visible: controller.selected.value == 1,
                      child: Orders()
                  ),
                  Visibility(
                    visible: controller.selected.value == 2,
                      child: Overview()
                  ),
                  Visibility(
                      visible: controller.selected.value == 3,
                      child: Transacthistory()
                  )
                ],
              );
            }
          ),
        ),
      ),
      bottomNavigationBar: const Bottomnavigator(),
    );
  }

  Widget indicator(selected, position){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 5, width: 40,
      color: selected ==position?primarycolour:Colors.white,
    );
  }
}
