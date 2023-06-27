import 'package:carparkbooking/pages/Bottom%20Navigation%20Bar/secondpayment.dart';

import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(vertical:30,horizontal:20),
       child:Column(
        children: [Align(child:Text(
            "PAYMENT",
            style: TextStyle(fontSize: 22,
            fontWeight: FontWeight.bold,))),
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
                  Text("Available",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$10",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                    Container()
                    ],
                  )
                ],),),
              )
              ]),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),),
                Text("\$12.5",
                style: TextStyle(
                  color: Colors.green,fontWeight: FontWeight.bold,fontSize: 22
                ),)
              ],
            ),
            SizedBox(height: 20,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPayment()));
            },
              child: Container(height: 50,
              width: MediaQuery.of(context).size.width / 2 * 2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.grey),
               child: Center(child: Text("Book Now",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            )
          ],
         ),
       ]
      )));
  }
}