import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/constant.dart';

class Calltocancel extends StatelessWidget {
  const Calltocancel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
              onTap: (){
                Get.back();
              },
            ),
            const Spacer(),
            const Text("Call customer to cancel the order",
              style: TextStyle(color: Colors.black,
                  fontSize: 15, fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
          ],
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            Container(
              // color: Color(0xff244495),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Joseph Williams",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("+234815478955",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                  Spacer(),
                  Image.asset("assets/img/phonecall.png",
                    height: 35, width: 35,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Text("Leave a note to explain reason for cancelling. (optional)"),
            SizedBox(height: 20,),
            TextFormField(
              textAlign: TextAlign.start,
              maxLines: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: const Color(0xffF4F5F7),
                hintStyle: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Color(0xffC5C5C5)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Color(0xffC5C5C5)),
                ),
                // errorBorder: OutlineInputBorder(
                //   borderRadius:
                //   BorderRadius.all(Radius.circular(15.0)),
                //   borderSide: BorderSide(color: Colors.white),
                // ),
                // focusedErrorBorder: OutlineInputBorder(
                //   borderRadius:
                //   BorderRadius.all(Radius.circular(15.0)),
                //   borderSide: BorderSide(color: Colors.white),
                // ),
              ),
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xffC1C7D0)),
              keyboardType: TextInputType.text,
              // controller: controller.passwordController.value,
              onChanged: (value) {},
              validator: (value) {
                if (value!.isEmpty) {
                  return "This field can't be empty";
                }
                return null;
              },
            ),
            Spacer(),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 64,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: primarycolour,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Text("Confirm Cancellation",
                  style: TextStyle(color: Colors.white,
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Why are you cancelling?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        const SizedBox(height: 5,),
                        Row(
                          children: const [
                            Text("Most items are unavailable",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        const SizedBox(height: 5,),Row(
                          children: const [
                            Text("We're to busy right now",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        const SizedBox(height: 5,),Row(
                          children: const [
                            Text("We're closed right now",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        const SizedBox(height: 5,),Row(
                          children: const [
                            Text("We're closing soon",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        const SizedBox(height: 5,),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  ),
                );
              },
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
