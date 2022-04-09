import 'package:flutter/material.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';
import '../dashboard/reaction.dart';
import 'profilehead.dart';
import 'public.dart';
import 'socialmediaicons.dart';
import 'user.dart';

class Businessprofile extends StatefulWidget {
  const Businessprofile({Key? key}) : super(key: key);

  @override
  _BusinessprofileState createState() => _BusinessprofileState();
}

class _BusinessprofileState extends State<Businessprofile> {
  int follow = 1;
  int page = 1;
  List picture = ["hgfh","hgfh","th","hhh"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: NewAppbar(
      //   context: context,
      //   name: "",
      //   bgcolor: Colors.white,
      //   iconcolor: Colors.black,
      //   image: Image.asset("assets/img/Setting.png",
      //     height: 30,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/topbanner.png"),
              alignment: Alignment.topCenter,
            )
          ),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  GestureDetector(
                      child: Image.asset("assets/img/newbackarrow.png",
                        height: 40,
                      ),
                    onTap: (){
                        Navigator.pop(context);
                    },
                  ),
                  Spacer(),
                  GestureDetector(
                      child: Image.asset("assets/img/newmore.png",
                        height: 40,
                      ),
                    onTap: (){

                    },
                  )
                ],
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const User();
                      },
                    ),
                  );
                },
                  child: Profilehead(
                    words: "Following",
                    wordstap: (){

                    },
                  ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Heysap"),
                  SizedBox(width: 5,),
                  Image.asset("assets/img/checkmarkcircle.png",
                    height: 15,
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text("@heysap"),
              SizedBox(height: 30,),
              Text("Stay connected with loved ones"
                  " and make payment the heysap way 🤑🤑"),
              SizedBox(height: 20,),
              Socialmediaicons(
                link: true,
                email: true,
                instagram: true,
                tiktok: true,
                twitter: true,
                youtube: true,
                user: true,
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: picture.length < 4
                        ? (30 * picture.length).toDouble()
                        : 115,
                    child: picture.length < 4
                        ? Stack(
                          children: [
                            for (int i = 0; i < picture.length; i++)
                              Positioned(
                                child: Image.asset(
                                  "assets/img/profilepic.png",
                                  height: 40,
                                ),
                                right: (i * 25),
                              ),
                          ],
                        )
                        : Stack(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Positioned(
                                child: Image.asset(
                                  "assets/img/profilepic.png",
                                  height: 40,
                                ),
                                right: (i * 25),
                              ),
                          ],
                        ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                      child: Text("Followed by Samuel and 50 of your friends")
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
                height: 50,
                child: Button(
                  fullwidth: true,
                  name: "Pay",
                  textcolor: Colors.white,
                  buttoncolor: primarycolour,
                  press: (){

                  },
                ),
              ),
              SizedBox(height: 20,),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            page = 1;
                          });
                        },
                        child: Text("Feed",
                          style: TextStyle(
                            color: primarycolour,
                            fontWeight: page == 1?FontWeight.w700:FontWeight.w400
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        color: page ==1?primarycolour:Colors.white,
                        height: 5,
                        width: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            page = 2;
                          });
                        },
                        child: Text("Payment History",
                          style: TextStyle(
                              color: primarycolour,
                              fontWeight: page == 2?FontWeight.w700:FontWeight.w400
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        color: page == 2?primarycolour:Colors.white,
                        height: 5,
                        width: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            page = 3;
                          });
                        },
                        child: Text("Shop",
                          style: TextStyle(
                              color: primarycolour,
                              fontWeight: page == 3?FontWeight.w700:FontWeight.w400
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        color: page == 3?primarycolour:Colors.white,
                        height: 5,
                        width: 50,
                      )
                    ],
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 20,),
              Visibility(
                visible: page == 1?true:false,
                  child: Column(
                    children: [
                      for(int i = 0; i < 4; i++)
                        item(),
                    ],
                  )
              ),
              Visibility(
                visible: page == 2?true:false,
                  child: Column(
                    children: [
                      for(int i = 0; i < 4; i++)
                        item(),
                    ],
                  )
              ),
              Visibility(
                visible: page == 3 ?true:false,
                  child: Column(
                    children: [
                      for(int i = 0; i < 4; i++)
                        shop(),
                    ],
                  )
              ),

              SizedBox(height: 50,),
              Container(
                width: size.width,
                child: Column(
                  children: [
                    Text("You need to be firends"),
                    Text("with @Debbie to write a comment"),
                  ],
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(){
    return Column(
      children: [
        Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/img/profilepic.png",
                  height: 50,
                ),
                SizedBox(height: 50,)
              ],
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Debbie paid Jenny Udeh"),
                            SizedBox(height: 10,),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Girls time out "
                                  ),
                                  TextSpan(
                                      text: "@Jenny Udeh 😍 \t\t💃🏿",
                                      style: TextStyle(color: primarycolour)
                                  ),

                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Public(),
                            SizedBox(height: 10,),
                            Text("5 sec ago"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Reaction(love: "0", share: "0",)
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }

  Widget shop(){
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            singleshop(),
            singleshop(),
          ],
        ),
        SizedBox(height: 25,)
      ],
    );
  }
}

Widget singleshop(){
  return Stack(
    children: [
      Column(
        children: [
          Image.asset("assets/img/granola.png",
            height: 195,
          ),
          Container(
            width: 185,
            decoration: BoxDecoration(
                color: primarycolour,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text("Granola and berries",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      child: Text("N3500",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          )
        ],
      ),
      Positioned(
          top: 10,
          right: 10,
          child: Image.asset("assets/img/loving.png",
            height: 40,
          )
      )
    ],
  );
}