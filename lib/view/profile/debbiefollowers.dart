import 'package:flutter/material.dart';

class Debbiefollowers extends StatefulWidget {
  const Debbiefollowers({Key? key}) : super(key: key);

  @override
  _DebbiefollowersState createState() => _DebbiefollowersState();
}

class _DebbiefollowersState extends State<Debbiefollowers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: NewAppbar(
      //   context: context,
      //   name: "Followers",
      //   bgcolor: Colors.white,
      //   iconcolor: Colors.black,
      //   image: Image.asset("assets/img/Setting.png",
      //     height: 30,
      //   ),
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            for(int i = 0; i<4; i++)
              item(),
          ],
        ),
      ),
    );
  }

  Widget item(){
    return Column(
      children: [
        Row(
          children: [
            Image.asset("assets/img/profilepic.png",
              height: 40,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Joseph Williams"),
                Text("@josephwilly"),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
