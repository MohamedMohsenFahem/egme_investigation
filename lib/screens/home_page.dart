import 'package:egme_investigation/screens/AirCairo/air_cairo.dart';
import 'package:egme_investigation/screens/Other%20Customers/other_customer.dart';
import 'package:egme_investigation/screens/egme/egma.dart';
import 'package:egme_investigation/screens/login_regest_forget/optionsLogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut().then((value) {
                    Widget buildLogIn(BuildContext context) {
                      return const Options();
                    }

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: buildLogIn,
                        ));
                  });
                },
                icon: const Icon(Icons.logout),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade600),
              width: 350,
              child: TextButton(
                child: Text(
                  'EGME',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EGME()),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade600),
              width: 350,
              child: TextButton(
                child: Text(
                  'Air Cairo',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AirCairo()),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade600),
              width: 350,
              child: TextButton(
                child: Text(
                  'Other Customers',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtherCustomer()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
