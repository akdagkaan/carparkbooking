import 'package:carparkbooking/pages/Login/login.dart';
import 'package:carparkbooking/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

final formKey = GlobalKey<FormState>();
bool _isLoading = false;
String fullName = "";
String email = "";
String password = "";



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: _isLoading ? Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor)) : SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80 ),
           child:Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            const Text("PARKEADY", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),),
            const SizedBox(height: 10),
            const Text("Create a PARKEADY Account",style: TextStyle(fontSize: 15, fontWeight:FontWeight.w400 ),),
            Image.asset("assets/Screenshot_12.png",),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                labelText: "Full Name",
                prefixIcon: Icon(
                 Icons.person_outline_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
              onChanged: (value){
               setState(() {
                 fullName = value;
               });
              },
              validator: (value){
                if(value!.isNotEmpty){
                  return null;
                }else{
                  return "Name cannot be empty";
                }
              },
            ),
           const SizedBox(height: 15,),
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
              child:const Text("Register", style: TextStyle(color: Colors.black, fontSize: 18),),
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              ),
              
            ),
          const SizedBox(height: 10,),
          Text.rich(
            TextSpan(
              text: "Already have an account ? ",
              style: const TextStyle(color: Colors.black,fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: "Login now",
                  style: const TextStyle(color: Colors.black,decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = (){
                    secondScreen(context, const LoginPage());
                    
                  }),
              ]
            )
          )
            ],
            
        ),),
          ),
      ));
  }
            
          }
   