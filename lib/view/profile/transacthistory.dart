import 'package:flutter/material.dart';

import '../dashboard/reaction.dart';


class Transacthistory extends StatefulWidget {
  const Transacthistory({Key? key}) : super(key: key);

  @override
  _TransacthistoryState createState() => _TransacthistoryState();
}

class _TransacthistoryState extends State<Transacthistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Image.asset("assets/img/moneytransfer.png",
                  height: 50,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Money Transfer"),
                    SizedBox(height: 10,),
                    Text("27 Feb 21"),
                  ],
                ),
                Spacer(),
                Text("-#5,000",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Image.asset("assets/img/moneydeposit.png",
                  height: 50,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Money Deposit"),
                    SizedBox(height: 10,),
                    Text("27 Feb 21"),
                  ],
                ),
                Spacer(),
                Text("+#5,000",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/img/profilepic.png",
                      height: 50,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You paid Debbie Williams"),
                        SizedBox(height: 10,),
                        Text("5 min ago"),

                      ],
                    ),
                    Spacer(),
                    Text("-#5,000",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 60,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text("Giveaway special 💸"),
                          SizedBox(height: 15,),
                          Reaction(love: "0", share: "0",),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),

          ],
        ),
      );
  }
}
