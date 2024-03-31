/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emge/database/user_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';




class User extends GetxController {
  static User get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;



  Future<void> saveUserRecord( UserModel user)async {

      try {
        await _db.collection('users').doc(user.id).set(user.toJson());
      } on FirebaseAuthException catch (e) {
        print('Firebase Authentication Exception: $e');
      } catch (e) {
        // Handle other exceptions
        print('Other Exception: $e');
      }

    }
}*/