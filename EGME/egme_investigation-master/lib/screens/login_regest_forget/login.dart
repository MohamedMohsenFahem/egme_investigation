import 'package:egme_investigation/screens/home_page.dart';
import 'package:egme_investigation/screens/login_regest_forget/forget_passowrd.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String texterror ='';
  bool _error = false;
  bool _hidePassword = true;
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter your email',
                        labelText: 'Email'
                    )
                ),
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
                            child: _hidePassword ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)
                        ),
                        hintText: 'Enter your password',
                        labelText: 'Password'
                    )
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _loading = false;
                        _error = false;
                        texterror = '' ;
                      });
                      String email = _emailController.text.trim();
                      if(email.isEmpty){
                        setState(() {
                          _error = true;
                          texterror= 'Email address is empty';
                        });
                        return;
                      }
                      if(!EmailValidator.validate(email)) {
                        setState(() {
                          _error = true;
                          texterror= 'Email address is unvaild';
                        });
                        return;
                      }
                      String password = _passwordController.text.trim();
                      if(password.isEmpty){
                        setState(() {
                          _error = true;
                          texterror= 'password is empty';
                        });
                        return;
                      }
                      if (password.length<8){
                        setState(() {
                          _error = true;
                          texterror= 'password must be at least 8 character';
                        });
                        return;
                      }
                      setState(() {
                        _loading = true;
                      });
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email,
                            password: password
                        ).then((value) {
                          Widget buildHomeScreen (BuildContext context) {
                            return const HomeScreen();
                          }
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: buildHomeScreen,));

                        });
                      } on FirebaseAuthException {
                        setState(() {
                          _loading = false;
                          _error = true;
                          texterror = 'Email or Password are in correct';
                        });

                      }
                    },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(300,10)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: const BorderSide(color: Colors.black12)
                            )
                        )
                    ),
                    child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Color(0xFF0d47A1),
                            fontSize: 30,
                            fontFamily: 'Cairo')
                    )
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Widget buildForgetPassword (BuildContext context) {
                      return const ForgetPassword();
                    }
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: buildForgetPassword,));

                  },
                  child: const Text(
                      'forget your password?',
                      style: TextStyle(fontSize: 15, fontFamily: 'Cairo')
                  ),
                ),
                const SizedBox(height: 20),
                if(_error)Text(
                    texterror,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Cairo',
                      color: Colors.red,
                    )

                ),
                const SizedBox(height: 20),
                if (_loading) const SpinKitDoubleBounce(color: Color(0xFF0d47A1))
              ]
          ),
        ),
      ),
    );
  }
}
