import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class Socialprofileactivity extends StatefulWidget {
  const Socialprofileactivity({Key? key}) : super(key: key);

  @override
  _SocialprofileactivityState createState() => _SocialprofileactivityState();
}

class _SocialprofileactivityState extends State<Socialprofileactivity> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: NewAppbar(
      //   context: context,
      //   name: "Activity",
      //   bgcolor: Colors.white,
      //   iconcolor: Colors.black,
      //   image: GestureDetector(
      //     onTap: (){
      //     },
      //     child: Icon(Icons.delete_rounded),
      //   ),
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            for(int i = 0; i<7; i++)
              item(),
          ],
        ),
      ),
    );
  }

  Widget item(){
    return Column(
      children: [
        GestureDetector(
          child: Row(
            children: [
              Image.asset("assets/img/profilepic.png",
                height: 40,
              ),
              SizedBox(width: 10,),
              Text("Joseph Williams"),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          onTap: (){
            bottomsheet();
          },
        ),
        SizedBox(height: 20,)
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
              Image.asset("assets/img/profilepic.png",
                height: 60,
              ),
              const SizedBox(height: 20,),
              Text("Samuel sent you a friend request"),
              const SizedBox(height: 20,),
              Divider(),
              const SizedBox(height: 50,),
              Container(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                        child: Text("Decline",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      decoration: BoxDecoration(
                          color: primarycolour,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                        child: Text("Accept",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100,),
            ],
          ),
        )
    );
  }

}
