import 'package:flutter/material.dart';
import 'package:nakbrach/auth/customer_signup.dart';
import 'package:nakbrach/main_screens/customer_home.dart';
import 'package:nakbrach/main_screens/supplier_home.dart';
import 'package:nakbrach/main_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const WelcomeScreen(),
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/customer_home': (context) => const CustomerHomeScreen(),
        '/supplier_home': (context) => const SupplierHomeScreen(),
        '/customer_signup': (context) => const CustomerRegister(),
      },
    );
  }
}
