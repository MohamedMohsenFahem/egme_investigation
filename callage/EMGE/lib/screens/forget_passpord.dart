import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  String texterror ='';
  bool _error = false;
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB3E5FC),
      appBar: AppBar(
        // backgroundColor: Colors.white,
          toolbarHeight: 0
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      setState(() async {
                        _loading = true;
                        await FirebaseAuth.instance
                            .sendPasswordResetEmail(email: email);
                        _loading = false;
                        const Text(
                            'Rest Password successfully sent',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Cairo',
                              color: Colors.green,
                            ));
                        _loading = false;
                      });


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
                        'Sent rest password',
                        style: TextStyle(
                            color: Color(0xFF0d47A1),
                            fontSize: 30,
                            fontFamily: 'Cairo')
                    )
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
