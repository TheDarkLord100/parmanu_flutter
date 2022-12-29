import 'package:flutter/material.dart';
import 'package:parmanu_flutter/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parmanu_flutter/screens/menu_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      // home: const LoginScreen(),
      home: const MenuScreen(),
    );
  }
}
