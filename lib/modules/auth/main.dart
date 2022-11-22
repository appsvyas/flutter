import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'package:selfsea/modules/auth/biometric.dart';
import 'dart:async';
import '../../layouts/auth.dart';

enum _SupportState { unknown, supported, unsupported }

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    // _getAvailableBiometrics().then((value) => {
    //   _checkBiometrics()
    // });

    return AuthLayout(SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 160.0, bottom: 80.0),
          child: Center(
            child: SizedBox(
                width: 200,
                height: 150,
                /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                child: Image.asset('assets/images/icon.png')),
          ),
        ),
        const Padding(
          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter valid email id as abc@gmail.com'),
          ),
        ),
        const Padding(
          padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 10),
          //padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter secure password'),
          ),
        ),
        TextButton(
          onPressed: () {
            //TODO FORGOT PASSWORD SCREEN GOES HERE
          },
          child: const Text(
            'Forgot Password',
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {
              context.push('/home');
            },
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        const SizedBox(
          height: 330,
          child: BiometricAuth(),
        ),
        const Text('New User? Create Account')
      ],
    )));
  }
}
