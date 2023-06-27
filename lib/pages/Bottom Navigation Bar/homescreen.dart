import 'package:carparkbooking/pages/Login/login.dart';
import 'package:carparkbooking/pages/sidebar%20pages/carparks.dart';
import 'package:carparkbooking/widgets/carpark.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs =[
      const Color.fromARGB(255, 63, 135, 143),
      const Color.fromARGB(140, 36, 208, 143)
     ];
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello Kaan",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Text("Lets book a park!",style: TextStyle(fontSize: 18,color: Colors.black45),)
      ],),),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,padding: EdgeInsets.only(left: 15),
        child: Row(children: [
          for(int i =0; i<2; i++)
          Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(left: 10,),
          width: MediaQuery.of(context).size.width/1.5,
          height: MediaQuery.of(context).size.height /5.5,
          decoration: BoxDecoration(
            color:Clrs[i],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("%20 off on Friday nights",
                style: TextStyle(color: Colors.white,fontSize: 22),),
                Container(
                  width: 90,
                  padding: EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                  child: Text("Book Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],))
            ],
          ),
        
          ),
        ],),
      ),
      SizedBox(height: 20),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CarParks()));
        },
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car Parks",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
            ),
               Text("See All",style: TextStyle(color:Colors.black54)),
          ],
        ),),
      ),
      SizedBox(height: 10,),
      CarPark(),
      ]),
            );
            }}