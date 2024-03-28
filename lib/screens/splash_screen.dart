import 'dart:async';
import 'package:egme_investigation/screens/home_page.dart';
import 'package:egme_investigation/screens/login_regest_forget/optionsLogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {

      Widget buildLoginScreen(BuildContext context) {
        User? currentUser = FirebaseAuth.instance.currentUser;
        if(currentUser == null){
          return const Options();
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