import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/constant/constant.dart';
import 'package:heysappbusiness/controller/dashboardcontroller.dart';
import 'package:heysappbusiness/view/dashboard/bottomnavigator.dart';

class Dashboard extends StatelessWidget {
    final dashboardcontroller = Get.put(Dashboardcontroller());
  @override
  Widget build(BuildContext context) {
    dashboardcontroller.width.value = MediaQuery.of(context).size.width;
    return Scaffold(
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
                            const Text("Orders"),
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
                            const Text("Overview"),
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
                            const Text("History"),
                            indicator(controller.selected, 3),
                          ],
                        ),
                        onTap: (){
                          controller.selected.value = 3;
                        },
                      ),
                    ],
                  ),
                  Text("Select date"),
                  Text("Today, Feb 27 2021"),
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
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 5, width: 40,
      color: selected ==position?primarycolour:Colors.white,
    );
  }
}
