import 'package:emge/screens/home/ByDate.dart';
import 'package:emge/screens/home/ByReg.dart';
import 'package:emge/screens/home/BySubject.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EMGE extends StatefulWidget {
  const EMGE({super.key});

  @override
  State<EMGE> createState() => _EMGEState();
}

class _EMGEState extends State<EMGE> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('EGME',style: TextStyle(fontSize: 30,)),
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
            body: const TabBarView(
              children: [
                ByDate(),
                ByReg(),
                BySubject(),
              ],
            )

        ),
      ),
    );
  }
}
