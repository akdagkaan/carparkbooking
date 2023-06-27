import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/parkeady.png"),scale:5 ),

            ),
          ),
          Text("Kaan Akdağ",style: TextStyle(color: Colors.white, fontSize: 20),),
          Text("akdagkaan@gmail.com",style: TextStyle(color: Colors.white,fontSize: 14),),
        ],
      ),
    );
  }
}