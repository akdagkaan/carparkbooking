import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey ,width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey ,width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey ,width: 2),
  )
);


void secondScreen(context, page){
 Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void secondScreenReplace(context, page){
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
}

void showSnackBar(context, color, message){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
  Text(message, style: const TextStyle(fontSize: 16),), backgroundColor: color,duration: const Duration(seconds: 2), 
  action: SnackBarAction(label: "OK", onPressed: (){},textColor: Colors.white, ),));
}