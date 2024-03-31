import 'dart:async';
import 'package:emge/screens/home/HomeScreen.dart';
import 'package:emge/screens/login_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WelcomeScreen extends StatefulWidget {

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();

}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {

      Widget buildLoginScreen(BuildContext context) {
        User? currentUser = FirebaseAuth.instance.currentUser;
        if(currentUser == null){
          return const loginSignup();
        }else{
          return const HomeScreen();
        }

      }

      Navigator.pushReplacement(context, MaterialPageRoute(builder: buildLoginScreen));

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB3E5FC),
      appBar: AppBar(
          backgroundColor: Colors.lightBlue[50],
          toolbarHeight: 0
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 150,
              ),
              const Text(
                  'EGME safety investigation',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Cairo',
                  )
              ),
              const SizedBox(height: 20),
               const SpinKitDoubleBounce(color: Color(0xFF0d47A1))
            ]
        ),
      ),
    );
  }

}