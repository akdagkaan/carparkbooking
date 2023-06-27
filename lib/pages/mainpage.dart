import 'package:carparkbooking/helper/navbar.dart';
import 'package:carparkbooking/pages/Bottom%20Navigation%20Bar/homescreen.dart';
import 'package:carparkbooking/pages/Bottom%20Navigation%20Bar/location.dart';
import 'package:carparkbooking/pages/Login/login.dart';
import 'package:carparkbooking/pages/Bottom%20Navigation%20Bar/payment.dart';
import 'package:carparkbooking/pages/sidebar%20pages/profile.dart';
import 'package:carparkbooking/pages/sidebar%20pages/recentpayments.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

 int _currentIndex = 0;
 final tabs = [
  HomeScreen(),
  LocationPage(),
  PaymentPage(),
 ];


  @override
  Widget build(BuildContext context) {
  final icon = Icons.bedtime_outlined;
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
  elevation: 0, actions: [
    IconButton(icon:Icon(icon),onPressed: (){},),
  ],
),
body: tabs[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
currentIndex: _currentIndex,
backgroundColor: Colors.grey,
items: [
BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: "Home",backgroundColor: Colors.white ),
BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),label: "Location",backgroundColor:Colors.white),
BottomNavigationBarItem(icon: Icon(Icons.payments_outlined),label: "Payment",backgroundColor:Colors.white)],
onTap:(index){
 setState(() {
   _currentIndex = index;
 });
},
),
drawer: Drawer(child: SingleChildScrollView(
  child: Container(
    child: Column(
      children: [
        NavBar(),
        myDrawerList(),
      ],
    ),
  ),
),),
    );
  }
  Widget myDrawerList() {
    return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItem(),
        menuItem2(),
        menuItem3(),
      ],
    ),
    );

  }

  Widget menuItem(){
    return Material(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        },
        child: Padding(padding:EdgeInsets.all(15.0),
        child: Row(children: [Expanded(child: Icon(Icons.person_2_outlined,size: 20,color: Colors.black,),),
        Expanded(
        flex:3,
        child: Text("Profile", style: TextStyle(color: Colors.black,fontSize: 16),))],),),
      ),
    );
  }
  Widget menuItem2(){
    return Material(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => RecentPaymentsPage()));
        },
        child: Padding(padding:EdgeInsets.all(15.0),
        child: Row(children: [Expanded(child: Icon(Icons.account_balance_wallet_outlined,size: 20,color: Colors.black,),),
        Expanded(
        flex:3,
        child: Text("Recent Payments", style: TextStyle(color: Colors.black,fontSize: 16),))],),),
      ),
    );
  }

  Widget menuItem3(){
    return Material(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: Padding(padding:EdgeInsets.all(15.0),
        child: Row(children: [Expanded(child: Icon(Icons.logout_outlined,size: 20,color: Colors.black,),),
        Expanded(
        flex:3,
        child: Text("Log Out", style: TextStyle(color: Colors.black,fontSize: 16),))],),),
      ),
    );

  }
}


