
import 'package:carparkbooking/pages/mainpage.dart';
import 'package:carparkbooking/pages/Login/register.dart';
import 'package:carparkbooking/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80 ),
           child:Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            const Text("PARKEADY", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),),
            const SizedBox(height: 10),
            const Text("Login and book a space for your car !",style: TextStyle(fontSize: 15, fontWeight:FontWeight.w400 ),),
            Image.asset("assets/Screenshot_6.png",),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                labelText: "Email",
                prefixIcon: Icon(
                 Icons.email_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
              onChanged: (value){
               setState(() {
                 email = value;
               });
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: textInputDecoration.copyWith(
                labelText: "Password",
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: Theme.of(context).primaryColor,
                )
              ),
              validator: (value) {
                if(value!.length <5){
                  return "Password must be at least 5 characters";
                } else {
                  return null;
                }
              },
              onChanged: (value){
               setState(() {
                 email = value;
               });
              },
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
              child:const Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 18),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Mainpage()),);
                login();
              },
              ),
              
            ),
          const SizedBox(height: 10,),
          Text.rich(
            TextSpan(
              text: "Don't have an account ? ",
              style: const TextStyle(color: Colors.black,fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: "Register here",
                  style: const TextStyle(color: Colors.black,decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = (){
                    secondScreen(context, const RegisterPage());
                    
                  }),
              ]
            )
          )
            ],
            
        ),),
          ),
      ));
  }
  login(){}
 
  }
