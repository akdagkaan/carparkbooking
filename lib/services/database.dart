import 'package:cloud_firestore/cloud_firestore.dart';

class Database{

  final String? userId;
  Database({this.userId});
  
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");
  final CollectionReference carParkCollection = FirebaseFirestore.instance.collection("carPark");

  // updating UserData
   Future updateUserData(String fullName, String email) async{
   return await userCollection.doc(userId).set({
    "fullname": fullName,
    "email": email,
    "userId": userId,




   });

   }
}