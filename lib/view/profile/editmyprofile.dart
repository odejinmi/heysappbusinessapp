import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/constant.dart';

class Editmyprofile extends StatefulWidget {
  const Editmyprofile({Key? key}) : super(key: key);

  @override
  _EditmyprofileState createState() => _EditmyprofileState();
}

class _EditmyprofileState extends State<Editmyprofile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          child: Row(
            children: [
              GestureDetector(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(70))
                  ),
                    child: Image.asset("assets/img/splitclose.png",
                      height: 40,
                    )
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              const Text("Save",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
              image: AssetImage("assets/img/happyfriends.png"),
              fit: BoxFit.fitWidth
          )
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Row(
              children: const [
                Spacer(),
                Icon(Icons.camera_alt_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                Spacer(),
              ],
            ),
            const SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/img/profilepic.png"),
                      fit: BoxFit.fill
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(80)
                  ),
                  border: Border.all(
                      color: Colors.white,
                      width: 6
                  )
              ),
              height: 70,
              width: 70,
              child: const Icon(Icons.camera_alt_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Name"),
                    const Divider(),
                    const SizedBox(height: 10,),
                    const Text("Joseph Williams"),
                    const SizedBox(height: 10,),
                    const Divider(),
                    const SizedBox(height: 10,),
                    const Text("Bio"),
                    const Divider(),
                    const SizedBox(height: 10,),
                    const Text("I was born to... do exactly what i'm doing today 😎\t💵"),
                    const SizedBox(height: 70,),
                    const Divider(),
                    const SizedBox(height: 20,),
                    const Text("Only six (6) social links can be added to your feed"),
                    const SizedBox(height: 30,),
                    Socialdetails("Facebook",
                            (v){

                            }
                    ),
                    Socialdetails("Instagram",
                        (v){

                        }
                    ),
                    Socialdetails("Tiktok",
                            (v){

                        }
                    ),
                    Socialdetails("Twitter",
                            (v){

                        }
                    ),
                    Socialdetails("Linkedin",
                            (v){

                        }
                    ),
                    Socialdetails("Youtube",
                            (v){

                        }
                    ),
                    Socialdetails("Discord",
                            (v){

                        }
                    ),
                    Socialdetails("Twitch",
                            (v){

                        }
                    ),
                    Socialdetails("WhatsApp",
                            (v){

                        }
                    ),
                    Socialdetails("Mail",
                            (v){

                        }
                    ),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Socialdetails(words, change){
    return Column(
      children: [
        Row(
          children: [
            Image.asset("assets/img/${words}.png",
              height: 20,
            ),
            const SizedBox(width: 20,),
            Text(words)
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                autofocus: true,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: const Color(0xffF4F5F7),
                  hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.grey),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
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
                onChanged: (value) {
                  change(value);
                },
                validator: (value) {
                  if (value != null) {
                    return "This field can't be empty";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(width: 20,),
            // Customeswitch(
            //   value: true,
            //   trackactivecolor: primarycolour,
            //     changevalue: (v){
            //
            //     },
            // )
          ],
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}
