import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:foodnepal/auth/firebase_auth.dart';
import 'package:foodnepal/Homepage/home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome to Food App",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Sign in to Continue",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () async {
                      await AuthProvider().loginWithGoogle().
                      then((value) => Navigator.pushReplacement(
                        context, MaterialPageRoute(
                          builder: (context) => HomePage() 
                          ),
                          ),
                          );
                    },
                  ),
                  SignInButton(
                    Buttons.Apple,
                    text: "Sign up with Apple",
                    onPressed: () => print("make some sense"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("By Signing in you are agreeing to our"),
            SizedBox(
              height: 10,
            ),
            Text('Terms and Policy'),
          ],
        ),
      ),
    );
  }
}
