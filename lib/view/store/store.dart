import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/view/dashboard/bottomnavigator.dart';
import 'package:heysappbusiness/view/store/addproduct.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
              onTap: (){
                Get.back();
              },
            ),
            const Spacer(),
            const Text("Store",
              style: TextStyle(color: Colors.black,
                  fontSize: 15, fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
          ],
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              item(),
              item(),
              item(),
              item(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottomnavigator(selected: 2,),
    );
  }
  
  Widget item(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: 200,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: const Color(0xffF5F5F5))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/img/granovaandberry.png",
                  height: 220,
                ),
                const SizedBox(height: 10,),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("Granola and berries")),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Text("N3500"),
                      const Spacer(),
                      Image.asset("assets/img/love.png",
                        height: 31, width: 31,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                GestureDetector(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/img/blackedit.png",
                        height: 20, width: 20,
                      ),
                      const SizedBox(width: 10,),
                      const Text("Edit"),
                    ],
                  ),
                  onTap: (){
                    Get.to(()=>const Addproduct());
                  },
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/img/delete.png",
                      height: 21, width: 21,
                    ),
                    const SizedBox(width: 10,),
                    const Text("Delete"),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
