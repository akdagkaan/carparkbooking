import 'package:carparkbooking/pages/mainpage.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';


class ProfilePage extends StatelessWidget {
  
  const ProfilePage({super.key});
 

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
  body:  SingleChildScrollView(
     child: Padding(padding:EdgeInsets.symmetric(vertical: 30,horizontal: 30),
     child: Column(children: [
      Align(child: Text("My Profile",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      ),
      SizedBox(height: 30,),
      SingleChildScrollView(
        child: Padding(padding:EdgeInsets.symmetric(vertical: 30,horizontal: 30),
     child: Column(children: [
      Align(child: Text("Kaan Akdağ",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      
      ),
      
      ),
      Text("akdagkaan@gmail.com",style: TextStyle(color: Colors.grey,fontSize: 14),),
     ]
     ), 
      ),
      ),
      TextFormField(decoration: textInputDecoration.copyWith(
                labelText: "Change Full Name",
                prefixIcon: Icon(
                 Icons.person_outline_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
            ),
            const SizedBox(height: 15,),
       TextFormField(decoration: textInputDecoration.copyWith(
                labelText: "Change Mail",
                prefixIcon: Icon(
                 Icons.mail_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
        
            ),
            const SizedBox(height: 15,),
            TextFormField(decoration: textInputDecoration.copyWith(
                labelText: "Change Password",
                prefixIcon: Icon(
                 Icons.password_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)

                )
              ),
              child:const Text("Save", style: TextStyle(color: Colors.black, fontSize: 18),),
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => const Mainpage()));
              },
              ),
              
            ),
     ]
    ))));
  }
}