import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class Socialmediaicons extends StatelessWidget {
  final bool email, phonecall,locationpin,facebook,
      instagram,tiktok,twitter,youtube,whatsapp, user, link, block;
  const Socialmediaicons({Key? key,this.email = false,this.phonecall = false,
  this.locationpin = false, this.facebook = false, this.instagram = false,
    this.tiktok = false, this.twitter = false,this.whatsapp = false,
    this.youtube = false, this.user = false, this.link = false, this.block = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Visibility(
                child: Row(
                  children: [
                    Image.asset("assets/img/Link.png",
                      height: 20,
                    ),
                    SizedBox(width: 10,),
                    Text("www.heysap.com",
                      style: TextStyle(color: primarycolour),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
                visible: link,
              ),
              Image.asset("assets/img/${block?'disable':''}birthday-cake.png",
                height: 20,
              ),
              SizedBox(width: 10,),
              Text("BD July 27",
                style: TextStyle(
                    color: block? const Color(0xAD9E9E9E):Colors.black
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("100 Following",
                style: TextStyle(
                    color: block? const Color(0xAD9E9E9E):Colors.black
                ),
              ),
              SizedBox(width: 30,),
              Text("1.5M Followers",
                style: TextStyle(
                    color: block? const Color(0xAD9E9E9E):Colors.black
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: email,
                child: Row(
                  children: [
                    Image.asset("assets/img/Mail.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: phonecall,
                child: Row(
                  children: [
                    Image.asset("assets/img/phonecall.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: locationpin,
                child: Row(
                  children: [
                    Image.asset("assets/img/locationpin.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: facebook,
                child: Row(
                  children: [
                    Image.asset("assets/img/${block?'disable':''}Facebook.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: instagram,
                child: Row(
                  children: [
                    Image.asset("assets/img/${block?'disable':''}Instagram.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: tiktok,
                child: Row(
                  children: [
                    Image.asset("assets/img/${block?'disable':''}Tiktok.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: twitter,
                child: Row(
                  children: [
                    Image.asset("assets/img/Twitter.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: youtube,
                child: Row(
                  children: [
                    Image.asset("assets/img/Youtube.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Visibility(
                visible: whatsapp,
                child: Row(
                  children: [
                    Image.asset("assets/img/WhatsApp.png",
                      height: 20,
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Spacer(),
              Visibility(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    color: primarycolour,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/img/chart.png",
                        height: 30,
                      ),
                      SizedBox(width: 15,),
                      Text("0 Items",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                visible: user,
              )
            ],
          ),
        ],
      ),
    );
  }
}
