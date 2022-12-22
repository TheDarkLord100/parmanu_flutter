import 'package:flutter/material.dart';
import 'package:parmanu_flutter/constants/snack_bar.dart';

import '../constants/colour_theme.dart';
import 'menu_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 30,
                ),
                // const Text(
                //   'Don\'t have an account yet?',
                //   style: TextStyle(fontSize: 16),
                // ),
                // GestureDetector(
                //   onTap: () {},
                //   child: const Text(
                //     'Register here !',
                //     style: TextStyle(
                //         color: ColourTheme.primaryOrange,
                //         fontWeight: FontWeight.w900,
                //         fontSize: 16),
                //   ),
                // ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    _email = value;
                  },
                  decoration: const InputDecoration(
                    hintText: ('Enter your email address'),
                    hintStyle: TextStyle(color: Color(0xFF666666)),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.black,
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ColourTheme.primaryOrange)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ColourTheme.primaryOrange)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    _password = value;
                  },
                  decoration: const InputDecoration(
                    hintText: ('Enter your Password'),
                    hintStyle: TextStyle(color: Color(0xFF666666)),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ColourTheme.primaryOrange)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ColourTheme.primaryOrange)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     GestureDetector(
                //       child: const Text(
                //         'Forgot Password ?',
                //         style:
                //         TextStyle(fontSize: 12, color: Color(0xFF4D4D4D)),
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: ColourTheme.primaryOrange,
                          foregroundColor: Colors.white,
                          elevation: 5,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          minimumSize: Size(MediaQuery
                              .of(context)
                              .size
                              .width, 45),
                        ),
                        onPressed: () {
                          if (_email == 'test@example.com' &&
                              _password == 'testPassword') {
                            Navigator.pushAndRemoveUntil(
                                context, MaterialPageRoute(builder: (context) =>
                                const MenuScreen()), (route) => false);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        }, child: const Text('Login'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
