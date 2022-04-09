import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/constant.dart';
import '../../constant/searchedittext.dart';
import '../../model/Newsfeedparser.dart';
import '../../request/apis.dart';
import '../profile/myprofile.dart';
import '../profile/public.dart';
import 'bottomnavigator.dart';
import 'reaction.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({Key? key}) : super(key: key);

  @override
  _NewsfeedState createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  List activity = ["dsfds", "sfsgfe", "fadas","dsfds", "sfsgfe", "fadas","dsfds", "sfsgfe", "fadas","dsfds", "sfsgfe", "fadas"];
  TextEditingController emailController = TextEditingController();
  bool isleft = true;
  Size? size;
  double left = 100, right = 0;
  List<Newsfeedparser> originList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initiate();
    Future.delayed(const Duration(milliseconds: 5), () {
      setState(() {
        left = size!.width;
      });
    });
  }
  void positiontrue(){
    left =size!.width;
    isleft = true;
  }
  void positionfalse(){
    left =100;
    isleft = false;
  }
  bool _isLoading = false;

  void _initiate() async {
    String res;

    setState(() {
      _isLoading = true;
    });

    res = await newsfeed();

    setState(() {
      _isLoading = false;
    });

    var cmddetails = jsonDecode(res);

    if (cmddetails['success']) {
      originList = newsfeedparserFromJson(json.encode(cmddetails['data']));
    } else {
      if (cmddetails['message'] != "No internet connection") {
        showCommonError(cmddetails['message'], context);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Searchedittext(),
              const SizedBox(height: 10,),
              Expanded(
                child: _isLoading? const Center(child: loadingWidget2):
                originList.isEmpty?
                Column(
                  children: [
                    header(),
                    const Spacer(),
                    const Text("You do not have any friends"),
                    const SizedBox(height: 20,),
                    const Text("Search for friends and Businesses to follow"),
                    const SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(40)),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        child: const Text("Import Phone Contacts Now"),
                      ),
                    ),
                    const Spacer(flex: 2,),
                  ],
                )
                :ListView.builder(
                    shrinkWrap: true,
                    itemCount: originList.length+1,
                    itemBuilder: (context, index) {
                      var nDataList;
                      if (index !=0) {
                        nDataList = originList[index-1];
                      }
                      return index == 0?header():item(nDataList);
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottomnavigator(selected: 4,),
    );
  }

  Widget header(){
    return Column(
        children: [
          TextFormField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: "What's on your mind?",
              border: InputBorder.none,
              fillColor: const Color(0xffF4F5F7),
              hintStyle: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const Myprofile()));
                    },
                    child: Image.asset("assets/img/profilepic.png",
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 30,),
                ],
              ),
              suffixIcon: GestureDetector(
                onTap: (){
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (_) => const Yourmind()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.edit),
                    SizedBox(width: 30,),
                  ],
                ),
              ),
              // enabledBorder: const OutlineInputBorder(
              //   borderRadius:
              //   BorderRadius.all(Radius.circular(25.0)),
              //   borderSide: BorderSide(color: Color(0xffF4F5F7)),
              // ),
              // focusedBorder: const OutlineInputBorder(
              //   borderRadius:
              //   BorderRadius.all(Radius.circular(25.0)),
              //   borderSide: BorderSide(color: Color(0xffF4F5F7)),
              // ),
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
            controller: emailController,
            onChanged: (value) {},
            validator: (value) {
              if (value != null) {
                return "This field can't be empty";
              }
              return null;
            },
          ),
          const SizedBox(height: 10,),
          const Divider(),
        ],
      );
}

  Widget item(originList){
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
                const SizedBox(height: 80,)
              ],
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(originList.message),
                          const SizedBox(height: 10,),
                          const Text("5 sec ago"),
                        ],
                      ),
                      const Spacer(),
                      Public(pos: originList.public,),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text.rich(
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
                  const SizedBox(height: 10,),
                   Reaction(
                    share: originList.shares.toString(),
                    love: originList.love.toString(),
                    join: true,
                  )
                ],
              ),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 30,)
      ],
    );
  }

}
