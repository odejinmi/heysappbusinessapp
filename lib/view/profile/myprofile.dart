import 'package:flutter/material.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';
import '../dashboard/reaction.dart';
import 'editmyprofile.dart';
import 'profilehead.dart';
import 'public.dart';
import 'socialmediaicons.dart';
import 'socialprofileactivity.dart';
import 'transacthistory.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  bool block = false;
  int page = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: NewAppbar(
      //   context: context,
      //   name: "",
      //   bgcolor: Colors.white,
      //   iconcolor: Colors.black,
      //   image: GestureDetector(
      //     onTap: (){
      //       bottomsheet();
      //     },
      //     child: Image.asset("assets/img/Setting.png",
      //       height: 30,
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/happyfriends.png"),
                alignment: Alignment.topCenter,
              )
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
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
                  const Spacer(),
                  GestureDetector(
                    child: Image.asset("assets/img/newmore.png",
                      height: 40,
                    ),
                    onTap: (){

                    },
                  )
                ],
              ),
              const SizedBox(height: 50,),
              Profilehead(
                scan: true,
                block: block,
                message: false,
                words: "Edit Profile",
                wordstap: (){
                  editprofile();
                },
              ),
              const SizedBox(height: 30,),
              const Text("Joseph Williams"),
              const SizedBox(height: 10,),
              const Text("@JosephWilliams"),
              const SizedBox(height: 10,),
              const Text("I was born to... do exactly what i'm doing today 😎 \t 💵"),
              const SizedBox(height: 40,),
              const Socialmediaicons(
                facebook: true,
                instagram: true,
                tiktok: true,
                twitter: true,
              ),
              const SizedBox(height: 70,),
              Container(
                height: 50,
                child: Button(
                  fullwidth: true,
                  name: "Settings",
                  textcolor: Colors.white,
                  buttoncolor: primarycolour,
                  press: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const Settings();
                    //     },
                    //   ),
                    // );
                  },
                ),
              ),
              const SizedBox(height: 20,),
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      const SizedBox(height: 10,),
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
                        child: Text("Transactions",
                          style: TextStyle(
                              color: primarycolour,
                              fontWeight: page == 2?FontWeight.w700:FontWeight.w400
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        color: page == 2?primarycolour:Colors.white,
                        height: 5,
                        width: 50,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 20,),
              page ==1?Column(
                children: [
                  for(int i = 0; i < 4; i++)
                    item(),
                ],
              ):Column(
                children: [
                  // Emptytransaction(),
                  transactionitem(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget item() {
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
                const SizedBox(height: 50,)
              ],
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
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
                        const Spacer(),
                        Column(
                          children: const [
                            Public(),
                            SizedBox(height: 10,),
                            Text("5 sec ago"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Reaction(love: "0", share: "0", )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
  Widget transactionitem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        GestureDetector(
          child: Text("view All Transactions",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          onTap: (){
            bottomcalendar();
          },
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/img/profilepic.png",
                  height: 50,
                ),
                const SizedBox(height: 50,)
              ],
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
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
                        const Spacer(),
                        Text("-N5,000",
                          style: TextStyle(
                            color: Colors.red
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Reaction(love: "0", share: "0",)
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,)
      ],
    );
  }

  void bottomsheet(){
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0))),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (context) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              const SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Socialprofileactivity();
                      },
                    ),
                  );
                },
                  child: const Text("My Activity")
              ),
              const SizedBox(height: 20,),
              const Divider(),
              const SizedBox(height: 100,),
            ],
          ),
        )
    );
  }
  void editprofile(){
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0))),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (context) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              const SizedBox(height: 60,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Editmyprofile();
                      },
                    ),
                  );
                },
                  child: const Text("Edit Bio")
              ),
              const SizedBox(height: 20,),
              const Divider(),
              const SizedBox(height: 20,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Socialprofileactivity();
                        },
                      ),
                    );
                  },
                  child: const Text("Settings")
              ),
              const SizedBox(height: 100,),
            ],
          ),
        )
    );
  }

  void bottomcalendar(){
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0))),
        backgroundColor: primarycolour,
        context: context,
        isScrollControlled: true,
        builder: (context) => Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              // Customecalendar(),
              SizedBox(height: 40,),
              Container(
                height: 50,
                child: Button(
                  name: "Choose",
                  press: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Transacthistory();
                        },
                      ),
                    );
                  },

                ),
              ),
              SizedBox(height: 60,),
            ],
          ),
        )
    );
  }
}