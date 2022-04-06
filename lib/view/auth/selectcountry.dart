import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';
import '../../controller/selectcontroller.dart';
import 'newsignup.dart';

class Selectcountry extends StatefulWidget {
  @override
  State<Selectcountry> createState() => _SelectcountryState();
}

class _SelectcountryState extends State<Selectcountry> {
  final selectcountrycontroller = Get.put(Selectcountrycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GetX<Selectcountrycontroller>(
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40,),
                  const Text("Select country of residence"),
                  const SizedBox(height: 20,),
                  controller.isLoading.value?loadingWidget2:Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, position) {
                        var nDatalist = controller.originList[position];
                        return GestureDetector(
                            onTap: () {
                              // controller.selectedlist.value.insert(position, true);
                                controller.selected.value = position;
                                controller.countryname.value = nDatalist.name!;
                                controller.countryflag.value = nDatalist.flag!;
                              setState(() {

                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                                        image: DecorationImage(
                                            image: Svg(nDatalist.flag!,
                                              source: SvgSource.network,
                                            ),
                                        )
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Text(nDatalist.name!,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  Visibility(
                                    visible: controller.selected.value ==position,
                                    child: Container(
                                      height: 30, width: 30,
                                      decoration: BoxDecoration(
                                        color: primarycolour,
                                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                                          border: Border.all()

                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: controller.selected.value !=position,
                                    child: Container(
                                      height: 30, width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                                          border: Border.all()

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        );
                      },
                      itemCount: controller.originList.length,
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 300,
                        child: Button(
                          buttoncolor: primarycolour,
                          textcolor: Colors.white,
                          name: "Next",
                          press: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => Newsignup())
                            );
                          },
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                  const SizedBox(height: 30,)
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
