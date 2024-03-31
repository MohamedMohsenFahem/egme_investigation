 import 'package:cloud_firestore/cloud_firestore.dart';

 class UserModel {
   String id;
   String jobTitle;
   String email;
   String name;
   String password;

   UserModel({required this.email, required this.name, required this.password , required this.jobTitle , required this.id });
   Map<String, dynamic> toJson() {
      return {
         'id': id,
         'name': name,
         'email': email,
         'password': password,
      };

   }
   final FirebaseFirestore _db = FirebaseFirestore.instance;


   _db.collection("users").add(user).then((DocumentReference doc) =>
   print('DocumentSnapshot added with ID: ${doc.id}'));
}