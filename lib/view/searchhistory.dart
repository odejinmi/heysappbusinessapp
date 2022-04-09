import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/searchedittext.dart';
import 'profile/businessprofile.dart';

class Searchhistory extends StatefulWidget {
  const Searchhistory({Key? key}) : super(key: key);

  @override
  _SearchhistoryState createState() => _SearchhistoryState();
}

class _SearchhistoryState extends State<Searchhistory> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: NewAppbar(
      //   name: "Add Recipients",
      //   bgcolor: Colors.white,
      //   iconcolor: Colors.black,
      //   context: context,
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Searchedittext(),
            SizedBox(height: 20,),
            Row(
              children: const [
                Text("Recent searches"),
                Spacer(),
                Text("Clear all")
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: const [ //
                Icon(Icons.history),
                SizedBox(width: 10,),
                Text("heysap"),
                Spacer(),
                Text("X")
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: const [ //
                Icon(Icons.history),
                SizedBox(width: 10,),
                Text("heysap"),
                Spacer(),
                Text("X")
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Businessprofile();
                    },
                  ),
                );
              },
              child: Row(
                children: [ //
                  Image.asset("assets/img/profilepic.png",
                    height: 40,
                  ),
                  SizedBox(width: 10,),
                  Text("Heysap"),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Text("That's all for now")
          ],
        ),
      ),
    );
  }
}
