import 'package:emge/screens/home/AirCairo.dart';
import 'package:emge/screens/home/EGME.dart';
import 'package:emge/screens/home/OtherCustomer.dart';
import 'package:emge/screens/login_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB3E5FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0277BD),
          actions: [
            Row(
              children: [

                IconButton(
                  onPressed:() async{
                    await FirebaseAuth.instance.signOut().then((value) {
                      Widget buildLogIn (BuildContext context) {
                        return const loginSignup();
                      }
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: buildLogIn,));
                    });
                  } ,
                  icon: const Icon(Icons.logout),)
              ],
            )

          ],
        // backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', width: 200, height: 100),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                          setState(()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const EMGE()));
                            }
                          );
                          },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60))
                  ),
                  child: const Text(
                      'EGME',
                      style: TextStyle(fontSize: 30, fontFamily: 'Cairo')
                  )
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    setState(()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AirCairo()));
                    }
                    );
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60))
                  ),
                  child: const Text(
                      'Air Cairo',
                      style: TextStyle(fontSize: 30, fontFamily: 'Cairo')
                  )
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    setState(()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OtherCustomer()));
                    }
                    );
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60))
                  ),
                  child: const Text(
                      'Other customer',
                      style: TextStyle(fontSize: 30, fontFamily: 'Cairo')
                  )
              ),
              const SizedBox(height: 20),
            ]
        ),
      ),
    );
  }
}
