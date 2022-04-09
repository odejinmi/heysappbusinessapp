import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/constant/constant.dart';
import 'package:heysappbusiness/view/order/calltocancel.dart';
import 'package:heysappbusiness/view/order/orderprogress.dart';

class Orderdetails extends StatelessWidget {
  const Orderdetails({Key? key}) : super(key: key);

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
            const SizedBox(width: 20,),
            const Text("Order Details",
              style: TextStyle(color: Colors.black,
                fontSize: 15, fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
            Image.asset("assets/img/printer.png",
              height: 21, width: 21,
            ),
            const SizedBox(width: 20,),
            Image.asset("assets/img/stats.png",
              height: 21, width: 21,
            ),
            const SizedBox(width: 20,),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("HFO-714Z",
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("4 item for Joseph Williams",
                    style: TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("No 24 James Street Ikeja Lagos state",
                    style: TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 48, width: MediaQuery.of(context).size.width,
              color: const Color(0xffF5F5F5),
              child: const Text("Customer",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Joseph Williams",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Image.asset("assets/img/phonecall.png",
                      height: 20,width: 20,),
                      const SizedBox(width: 20,),
                      Image.asset("assets/img/locationpinred.png",
                      height: 20, width: 20,),
                      const SizedBox(width: 20,),

                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text("+234815478955",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5,),
                  const Divider(),
                  const SizedBox(height: 5,),
                  Row(
                    children: const [
                      Text("BookingID",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text("HDW-67584-9-044",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 48, width: MediaQuery.of(context).size.width,
              color: const Color(0xffF5F5F5),
              child: const Text("Order Summary",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Delivery Instructions",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,
                      color: Color(0xffD4D2D2)
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text("When you get to my street call me i am close by the entrance. Thanks!",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,
                      color: primarycolour
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Divider(),
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      Text("4, Plantain & Beans",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text("₦ 4,800.00",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(),
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      Text("Subtotal",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text("₦ 4,800.00",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: const [
                      Text("Taxes",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text("₦ 720.00",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: const [
                      Text("Total",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text("₦ 4,800.00",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 64,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: primarycolour,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: const Text("Cancel Order",
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
                              GestureDetector(
                                child: Row(
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
                                onTap: (){
                                  Get.to(()=> const Calltocancel());
                                },
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
