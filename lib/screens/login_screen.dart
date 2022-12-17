import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text('Sign in'),
              SizedBox(
                height: 30,
              ),
              Text('Don\'t have an account yet?'),
              GestureDetector(
                child: Text(
                  'Register here !'
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(child: Column(
                children: [
                  Text('Email'),
                  SizedBox(height: 10,),
                  TextFormField(

                  ),
                  SizedBox(height: 30,),
                  Text('Password'),
                  SizedBox(height: 10,),
                  TextFormField(),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          'Forgot Password ?'
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(onPressed: () {}, child: Text('Login')),

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
