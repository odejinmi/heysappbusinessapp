import 'package:flutter/material.dart';


class Reaction extends StatefulWidget {
  final bool join;
  final String love, share;
  const Reaction({Key? key, this.join = false, required this.love, required this.share}) : super(key: key);

  @override
  _ReactionState createState() => _ReactionState();
}

class _ReactionState extends State<Reaction> {
  bool join = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/img/like.png",
                height: 30,
              ),
              SizedBox(width: 10,),
              Text(widget.love),
            ],
          ),
          SizedBox(width: 20,),
          GestureDetector(
            onTap: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const Commentdetails();
              //     },
              //   ),
              // );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/img/comment.png",
                  height: 30,
                ),
                SizedBox(width: 10,),
                Text("10"),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/img/forward.png",
                height: 30,
              ),
              SizedBox(width: 10,),
              Text(widget.share),
            ],
          ),
          Spacer(),
          Visibility(
            visible: widget.join,
              child: Row(
                children: [
                  Text("1/3"),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        join = !join;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: !join?25:15,vertical: 10),
                        child: Text(!join?"Join":"Pending",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
