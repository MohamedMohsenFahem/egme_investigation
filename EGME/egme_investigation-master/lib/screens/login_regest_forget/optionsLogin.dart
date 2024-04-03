import 'package:egme_investigation/screens/login_regest_forget/login.dart';
import 'package:egme_investigation/screens/login_regest_forget/register.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key});
  @override
  Widget build(BuildContext context) {
    return
     DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 10,
              shadowColor: Theme.of(context).shadowColor,
              backgroundColor: Colors.lightBlue[50],
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Login',

                  ),
                  Tab(text: 'Register'),
                ],
                labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
            body: Container(
              color: const Color(0xFFB3E5FC),
              child: const TabBarView(
                children: [
                  Login(),
                  RegisterScreen(),
                ],
              ),
            )),
      )
    ;
  }
}
