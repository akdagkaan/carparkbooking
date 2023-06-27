
import 'package:flutter/material.dart';
class RecentPaymentsPage extends StatelessWidget {
  const RecentPaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  centerTitle: true,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/parkeady.png',
        scale: 4,
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  ),
  backgroundColor: Colors.grey, 
),
body: SingleChildScrollView(
  child: Padding(padding: EdgeInsets.all(20),
      child: Column(children: [
        Align(
          child: Text(
            "RECENT PAYMENTS",
            style: TextStyle(fontSize: 22,
            fontWeight: FontWeight.bold,),
          ),
        ),
        SizedBox(height: 40),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Container(
                  height:100,
                  width: MediaQuery.of(context).size.width / 4,
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.all(10),
                  decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/parking_icon.png",width: 70,height: 70,),
                ),
              Container(
                width: MediaQuery.of(context).size.width / 1.8,
                child: Padding(padding: EdgeInsets.only(left: 15,top: 20,bottom: 25,right: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Park Beşiktaş",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$10.0- Friday Night Discount",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                    Container()
                    ],
                  )
                ],),),
              )
              ]),
            ),
          ],
        ),
         SizedBox(height: 20,),
         Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Container(
                  height:100,
                  width: MediaQuery.of(context).size.width / 4,
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.all(10),
                  decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/parking_icon.png",width: 70,height: 70,),
                ),
              Container(
                width: MediaQuery.of(context).size.width / 1.8,
                child: Padding(padding: EdgeInsets.only(left: 15,top: 20,bottom: 25,right: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Park Karaköy",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$12.5",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                    Container()
                    ],
                  )
                ],),),
              )
              ]),
            ),
          ],
        ),
        SizedBox(height: 20,),
         Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Container(
                  height:100,
                  width: MediaQuery.of(context).size.width / 4,
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.all(10),
                  decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/parking_icon.png",width: 70,height: 70,),
                ),
              Container(
                width: MediaQuery.of(context).size.width / 1.8,
                child: Padding(padding: EdgeInsets.only(left: 15,top: 20,bottom: 25,right: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Park Nişantaşı",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$12.5",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                    Container()
                    ],
                  )
                ],),),
              )
              ]),
            ),
          ],
        ),
      ]
    ),
    ),
),
    );
  }
}