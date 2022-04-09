import 'package:flutter/material.dart';
import 'package:heysappbusiness/view/profile/profilehead.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';
import '../dashboard/reaction.dart';
import 'debbiefollowers.dart';
import 'public.dart';
import 'socialmediaicons.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  int follow = 3;
  bool block = false, remove = false;
  int page = 1;
  List picture = ["hgfh","hgfh","th","hhh"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/${block?'blocktopbanner':'happyfriends'}.png"),
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
                            bottomsheet();
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Profilehead(
                      block: block,
                      words: "Add Friend",
                      wordstap: (){
                        setState(() {
                          remove = !remove;
                        });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return const Debbiefollowers();
                        //     },
                        //   ),
                        // );
                      },
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Debbie Williams",
                              style: TextStyle(
                                  color: block? const Color(0xAD9E9E9E):Colors.black
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Text("@DebbieWilliams",
                              style: TextStyle(
                                  color: block? const Color(0xAD9E9E9E):Colors.black
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Visibility(
                          visible: remove,
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/indication.png"),
                                fit: BoxFit.fill
                              )
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Text("UnFriend @DebbieWilliams",
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(width: 15,),
                                Image.asset("assets/img/unfriend.png",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text("A girl should be like a butterfly 🦋\t🦋",
                      style: TextStyle(
                          color: block? const Color(0xAD9E9E9E):Colors.black
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Socialmediaicons(
                      block: block,
                      facebook: true,
                      instagram: true,
                      tiktok: true,
                    ),
                    const SizedBox(height: 40,),
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
                    const SizedBox(height: 40,),
                    Container(
                      height: 50,
                      child: Button(
                        fullwidth: true,
                        name: "Pay or Request",
                        textcolor: block? const Color(0xAD9E9E9E):Colors.white,
                        buttoncolor: block? const Color(0xAD9E9E9E):primarycolour,
                        press: (){

                        },
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
              block?Container(
                height: 50,
                width: size.width,
                color: const Color(0xAD9E9E9E),
              ):
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const Divider(),
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
                              child: Text("Payment History",
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
                    const Divider(),
                    const SizedBox(height: 20,),
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
                    const SizedBox(height: 50,),
                    const Center(child: Text("You need to be firends")),
                    const Center(child: Text("with @Debbie to write a comment")),
                  ],
                ),
              ),

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
                    const Reaction(love: "0",share: "0",)
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
              Visibility(
                visible: !block,
                child: Column(
                  children: const [
                    Text("Unfriend"),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              GestureDetector(
                child: Text(block?"Ubblock":"Block",
                  style: const TextStyle(
                    color: Colors.red
                  ),
                ),
                onTap: (){
                  setState(() {
                    block = !block;
                  });
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20,),
              const Divider(),
              const SizedBox(height: 20,),
              const Text("Report Account"),
              const SizedBox(height: 100,),
            ],
          ),
        )
     );
  }
}
