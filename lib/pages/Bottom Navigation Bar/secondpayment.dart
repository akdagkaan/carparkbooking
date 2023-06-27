
import 'package:carparkbooking/pages/mainpage.dart';
import 'package:carparkbooking/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SecondPayment extends StatefulWidget {
  const SecondPayment({super.key});

  @override
  State<SecondPayment> createState() => _SecondPaymentState();
}

class _SecondPaymentState extends State<SecondPayment> {
  
  final formKey = GlobalKey<FormState>();
 bool _isLoading = false;
String fullName = "";
String cardNumber = "";
String expirationDate = "";
String cvv = "";



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
            const Text("PARKEADY PAYMENT", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),),
            const SizedBox(height: 10),
            const Text("Please write your card information",style: TextStyle(fontSize: 15, fontWeight:FontWeight.w400 ),),
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
                labelText: "Card Number",
                prefixIcon: Icon(
                 Icons.credit_card,
                 color: Theme.of(context).primaryColor
                )
              ),
              onChanged: (value){
               setState(() {
                 cardNumber = value;
               });
              },
      
            ),
            const SizedBox(height: 15,),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                labelText: "Expiration Date",
                prefixIcon: Icon(
                 Icons.date_range_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
              onChanged: (value){
               setState(() {
                 expirationDate = value;
               });
              },
      
            ),
            const SizedBox(height: 15,),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                labelText: "CVV",
                prefixIcon: Icon(
                 Icons.security_outlined,
                 color: Theme.of(context).primaryColor
                )
              ),
              onChanged: (value){
               setState(() {
                 cvv = value;
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
              child:const Text("Pay Now", style: TextStyle(color: Colors.black, fontSize: 18),),
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => const Mainpage()));
              },
              ),
              
            ),
            ],
            
        ),),
          ),
      )




    );
  }
}