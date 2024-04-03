import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'screens/splash_screen.dart';

void main() async {
  runApp(const emge_investigation());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class emge_investigation extends StatelessWidget {
  const emge_investigation({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline2: TextStyle(color: Color(0xFF0d47A1)),
          bodyText1: TextStyle(color: Color(0xFF0d47A1)),
        ),
        //buttonTheme:
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
