import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/signinauth.dart';
import '../widget/custombutton.dart';
import '../widget/customtextfield.dart';
import '../widget/showsnackbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SvgPicture.asset('assets/images/signIn_bg.svg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              CustomTextField(
                hintText: 'Email',
                icon: const Icon(Icons.email),
                controller: _email,
                message: 'Please enter email',
              ),
              CustomTextField(
                hintText: 'Password',
                icon: const Icon(Icons.lock),
                controller: _password,
                message: 'Please enter password',
              ),
              CustomButton(
                color: const Color(0xff0165ff),
                height: 50,
                width: MediaQuery.of(context).size.width,
                text: 'Login',
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/home');
                  }
                },
              ),
              const Center(
                child: Text(
                  'Or, login with...',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    color: Colors.white,
                    height: 50,
                    width: 110,
                    text: 'Google',
                    isLogo: true,
                    onpress: () async {
                      bool cred = await AuthMethods().signInWithGoogle(context);
                      if (cred) {
                        Navigator.pushNamed(context, '/home');
                      } else {
                        showSnackBar(context, 'Login Failed!!');
                      }
                    },
                    icon: 'assets/images/icons8-google.svg',
                  ),
                  /*CustomButton(
                    color: Colors.white,
                    height: 50,
                    width: 110,
                    text: 'Facebook',
                    isLogo: true,
                    onpress: () async {
                      bool cred = await AuthMethods().signInWithFacebook();
                      if (cred) {
                        Navigator.pushNamed(context, '/home');
                      } else {
                        showSnackBar(context, 'Login Failed!!');
                      }
                    },
                    icon: 'assets/images/facebook_svg.svg',
                  ),*/
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Create New Account?'),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      ' Register',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}