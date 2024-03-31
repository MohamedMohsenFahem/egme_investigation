import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';





class AuthRepository extends GetxController{
  static AuthRepository get instance => Get.find();

  //final deviceStorge = GetStorage();
  final _auth = FirebaseAuth.instance;

}