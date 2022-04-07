import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/view/auth/selectcountry.dart';
import 'package:heysappbusiness/view/auth/signin/signin.dart';

import '../controller/Splashscreencontroller.dart';

class Splashscreen extends StatelessWidget {
  final splashscreencontroller = Get.put(Splashscreencontroller());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
          color:const Color(0xff124CC2),
          alignment: Alignment.center,
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Image.asset("assets/img/heypp1.png",height: 194,),
              SizedBox(height: 30,),
              const Text("Take your business to a new height",
                style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.white)
                        ),
                        child: const Text("Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 18, fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: (){
                        Get.to(()=>Selectcountry());
                        Get.delete();
                      },
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.white),
                          color: Colors.white
                        ),
                        child: const Text("Sign In",
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: (){
                        Get.to(()=>Signin());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100,),
            ],
          )

      ),
    );
  }
}

