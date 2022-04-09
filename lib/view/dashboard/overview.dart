import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 10,),
          const Divider(),
          const SizedBox(height: 30,),
          const Text("Select date",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Today, Feb 27 2021",
                style: TextStyle(
                    fontSize: 11, fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(width: 10,),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(),
          const SizedBox(height: 40,),
          const Text("₦0.00",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Total revenue",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: const Text("This is your sales amount before adjustments and deductions",
              style: TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 160, width: 180,
                color: Color(0xffFAFAFA),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("0",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Completed Order",
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                alignment: Alignment.center,
                height: 160, width: 180,
                color: Color(0xffFAFAFA),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("0",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Cancelled Order",
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: const [
              Text("Revenue Overview",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Current month",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500,
                        color: Color(0xffACB1C0)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("₦0.00",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500,
                        color: Color(0xff6BDF92)
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 150,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Previous month",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500,
                        color: Color(0xffACB1C0)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("₦0.00",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500,
                        color: Color(0xff124CC2)
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
