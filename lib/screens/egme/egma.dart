import 'package:egme_investigation/screens/Air%20Cairo/air_cairo.dart';
import 'package:egme_investigation/screens/Other%20Customers/other_customer.dart';
import 'package:flutter/material.dart';

class EGME extends StatelessWidget {
  const EGME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
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
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue.shade600),
              width: double.infinity,
              child: TextButton(
                child: Text(
                  'EGMA',
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
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue.shade600),
              width: double.infinity,
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
                    MaterialPageRoute(builder: (context) => const AirCairo()),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue.shade600),
              width: double.infinity,
              child: TextButton(
                child: Text(
                  'Other Customers',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OtherCustomers()),
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
