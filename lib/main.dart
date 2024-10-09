import 'package:flutter/material.dart';
import 'package:login_design/screens/login_screen.dart';
import 'package:login_design/screens/register_screen.dart';
import 'package:login_design/screens/welcome_screen.dart';

void main() {
  runApp(CookingHubApp());
}

class CookingHubApp extends StatelessWidget {
  const CookingHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}
