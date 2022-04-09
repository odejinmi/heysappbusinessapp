import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class Profilehead extends StatelessWidget {
  final bool block, message, scan;
  final int follow;
  final String words;
  final Function? wordstap;
  const Profilehead({Key? key, this.block = false, this.words = "",
    this.message = true, this.follow = 1, this.wordstap, this.scan = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          block?Container(
            decoration: BoxDecoration(
                color: Color(0xAD9E9E9E),
                borderRadius: BorderRadius.all(Radius.circular(1000)),
                border: Border.all(color: Colors.white, width: 4)
            ),
            height: 70,
            width: 70,
          )
              :Image.asset("assets/img/heypp1.png",
            height: 80,
          ),
          const Spacer(),
          Visibility(
            child: block?Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(30),)
              ),
            ):Image.asset("assets/img/profilemessage.png",
              height: 50,
            ),
            visible: message,
          ),
          const SizedBox(width: 20,),
            GestureDetector(
              child: Container(
                height: 40,
                width: 130,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: block?Colors.grey:primarycolour,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Text(words,
                style: TextStyle(
                    color: block?Colors.grey:Colors.white
                ),
              ),
          ),
              onTap: (){
                wordstap!();
              },
            ),
          Visibility(
            visible: scan,
            child: Row(
              children: [
                SizedBox(width: 30,),
                GestureDetector(
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (_) => const Myqr()));
                    },
                    child: Image.asset("assets/img/Scan.png",height: 30,)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
