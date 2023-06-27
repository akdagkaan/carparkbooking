import 'package:carparkbooking/pages/Bottom%20Navigation%20Bar/secondpayment.dart';
import 'package:flutter/material.dart';

class CarParks extends StatelessWidget {
  const CarParks({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
    
    child: Padding(padding: EdgeInsets.symmetric(vertical:30,horizontal:20),
    child: Column(
      children: [
        Align(
          child: Text("CAR PARKS",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),),
        ),
        SizedBox(height: 40),
     Column(
        children: [
          ],
        )
      ]
        )
      
    ),
    
    
  
    );
  }
}
