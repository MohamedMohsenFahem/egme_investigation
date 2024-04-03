import 'package:egme_investigation/screens/home_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _Namecontroller = TextEditingController();
  final TextEditingController _jobetitlecontroller = TextEditingController();
  final TextEditingController _idcontroller = TextEditingController();
  final TextEditingController _passwordconformtion = TextEditingController();
  String texterror = '';
  bool _error = false;
  bool _hidePassword = true;
  bool _hideConfirmPassword = true;
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
                controller: _Namecontroller,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Enter your name',
                    labelText: 'name')),
            const SizedBox(height: 20),
            TextField(
                controller: _jobetitlecontroller,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.work),
                    hintText: 'Enter your job title',
                    labelText: 'job title')),
            const SizedBox(height: 20),
            TextField(
                controller: _idcontroller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.card_membership),
                    hintText: 'Enter your ID',
                    labelText: 'ID')),
            const SizedBox(height: 20),
            TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Enter your email',
                    labelText: 'Email')),
            const SizedBox(height: 20),
            TextField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _hidePassword,
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _hidePassword = !_hidePassword;
                          });
                        },
                        child: _hidePassword
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    hintText: 'Enter your password',
                    labelText: 'Password')),
            const SizedBox(height: 20),
            TextField(
                controller: _passwordconformtion,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _hideConfirmPassword,
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _hideConfirmPassword = !_hideConfirmPassword;
                          });
                        },
                        child: _hideConfirmPassword
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    hintText: 'Enter your confirm password',
                    labelText: 'confirm Password')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    _loading = false;
                    _error = false;
                    texterror = '';
                  });
                  String name = _Namecontroller.text.trim();
                  if (name.isEmpty) {
                    setState(() {
                      _error = true;
                      texterror = 'name is empty';
                    });
                    return;
                  }
                  String jobTitle = _jobetitlecontroller.text.trim();
                  if (jobTitle.isEmpty) {
                    setState(() {
                      _error = true;
                      texterror = 'Job title is empty';
                    });
                    return;
                  }
                  String ID = _idcontroller.text.trim();
                  if (ID.isEmpty) {
                    setState(() {
                      _error = true;
                      texterror = 'ID is empty';
                    });
                    return;
                  }

                  String email = _emailController.text.trim();
                  if (email.isEmpty) {
                    setState(() {
                      _error = true;
                      texterror = 'Email address is empty';
                    });
                    return;
                  }
                  if (!EmailValidator.validate(email)) {
                    setState(() {
                      _error = true;
                      texterror = 'Email address is unvaild';
                    });
                    return;
                  }
                  String password = _passwordController.text.trim();
                  if (password.isEmpty) {
                    setState(() {
                      _error = true;
                      texterror = 'password is empty';
                    });
                    return;
                  }
                  if (password.length < 8) {
                    setState(() {
                      _error = true;
                      texterror = 'password must be at least 8 character';
                    });
                    return;
                  }
                  String confirmpassword = _passwordconformtion.text.trim();
                  if (confirmpassword.isEmpty) {
                    setState(() {
                      _error = true;
                      texterror = 'confirm password is empty';
                    });
                    return;
                  }
                  if (confirmpassword != password) {
                    setState(() {
                      _error = true;
                      texterror = 'Passwords do not match';
                    });
                    return;
                  }
                  setState(() {
                    _loading = true;
                  });
                  try {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    )
                        .then(
                      (value) {
                        User currentUser = FirebaseAuth.instance.currentUser!;
                        currentUser.updateDisplayName(name);

                        Widget buildHomeScreen(BuildContext context) {
                          return const HomeScreen();
                        }

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: buildHomeScreen,
                            ));
                      },
                    );
                  } on FirebaseAuthException {
                    setState(() {
                      _loading = false;
                      _error = true;
                      texterror = 'email already-in-use';
                    });
                  }
                },
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(300, 10)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(color: Colors.black12)))),
                child: const Text('Register',
                    style: TextStyle(
                        color: Color(0xFF0d47A1),
                        fontSize: 30,
                        fontFamily: 'Cairo'))),
            const SizedBox(height: 20),
            if (_loading) const SpinKitDoubleBounce(color: Color(0xFF0d47A1)),
            if (_error)
              Text(texterror,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: Colors.red,
                  )),
          ]),
        ),
      ),
    );
  }
}
