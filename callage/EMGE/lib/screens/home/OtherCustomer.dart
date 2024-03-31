import 'package:emge/screens/home/ByDate.dart';
import 'package:emge/screens/home/ByReg.dart';
import 'package:emge/screens/home/BySubject.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherCustomer extends StatefulWidget {
  const OtherCustomer({super.key});

  @override
  State<OtherCustomer> createState() => _OtherCustomerState();
}

class _OtherCustomerState extends State<OtherCustomer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Other Customer',style: TextStyle(fontSize: 30,)),
              toolbarHeight: 50,
              shadowColor: Theme.of(context).shadowColor,
              backgroundColor: const Color(0xFF0288D1),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Date',
                  ),
                  Tab(text: 'Register'),
                  Tab(
                    text: 'Subject',
                  ),
                ],
              ),
            ),
            body: Container(
              color: const Color(0xFFB3E5FC),
              child: const TabBarView(
                children: [
                  ByDate(),
                  ByReg(),
                  BySubject(),
                ],
              ),
            )

        ),
      ),
    );
  }
}
