

import 'package:flutter/material.dart';

class CarPark extends StatelessWidget {
  var carParkNames =[
    "Park Beşiktaş",
    "Park Nişantaşı",
    "Park Karaköy",
    "Park Bebek",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount:carParkNames.length, physics: NeverScrollableScrollPhysics(),shrinkWrap:true,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.7,crossAxisCount: 2), itemBuilder: (context, index){
      return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]
        ),
        child: Padding(padding: EdgeInsets.all(12),
        child:
          Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Text("Available",style: TextStyle(color: Colors.green,
                        fontWeight: FontWeight.bold,fontSize: 12
                      ),),
                      Icon(Icons.add_card_outlined,color: Colors.black,)
                      
                    
                  ],
                ),
                SizedBox(height: 10),
                Padding(padding: EdgeInsets.all(10),
                  child: Image.asset("assets/parking_icon.png" ,height:100,width:100,)),
                
                SizedBox(height: 15,),
                 Padding(padding: EdgeInsets.all(8),
                  child: 
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carParkNames[index],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("\$10", style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.withOpacity(0.8)
                          ),)
                        ],
                      ),
                      ],
                    ),
                  ),
               
                 ],
                 ),
         ),
        
      );
    });
  }
}