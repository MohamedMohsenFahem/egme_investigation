import 'package:emge/screens/login_screen.dart';
import 'package:emge/screens/register_screen.dart';
import 'package:flutter/material.dart';



class loginSignup extends StatelessWidget {
  const loginSignup({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('EGME safety investigation',style: TextStyle(fontSize: 20,)),
            toolbarHeight: 50,
            shadowColor: Theme.of(context).shadowColor,
            actions: [
              Image.asset('assets/images/logo.png', width: 200, height: 50)
            ],
            backgroundColor: const Color(0xFF0288D1),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Login',
                ),
                Tab(text: 'Register'),
              ],
            ),
          ),
          body: Container(
            color: const Color(0xFFB3E5FC),
            child: const TabBarView(

              children: [
                Login(),
                RegisterScreen(
                  email: '',
                  id: '',
                  jobTitle: '',
                  name:'' ,
                  password: '',
                ),
              ],
            ),
          )

        ),
      ),
    );
  }
}
