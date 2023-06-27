import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(height: 40),
          Center(
            
                  child: Image.asset("assets/Screenshot_20.png",width:410,height: 410,),
                ),
        ],
      ),
    );
  }
}