import 'package:carparkbooking/helper/helper_function.dart';
import 'package:carparkbooking/pages/home.dart';
import 'package:carparkbooking/pages/Login/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn =false;
 
 void initState(){
  super.initState();
  getUserLoggedInStatus();
 }
 getUserLoggedInStatus () async {
  await HelperFunctions.getUserLoggedInStatus().then((value){
  if(value!=null){
  _isSignedIn = value;
  }
  });
 }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey.shade600,
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: _isSignedIn ? const HomePage() : const LoginPage(),
    );
  }
}

