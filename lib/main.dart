import 'package:flutter/material.dart';
import 'package:nakbrach/auth/customer_login.dart';
import 'package:nakbrach/auth/customer_signup.dart';
import 'package:nakbrach/auth/supplier_login.dart';
import 'package:nakbrach/auth/supplier_signup.dart';
import 'package:nakbrach/main_screens/customer_home.dart';
import 'package:nakbrach/main_screens/supplier_home.dart';
import 'package:nakbrach/main_screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/customer_login': (context) => const CustomerLogin(),
        '/supplier_signup': (context) => const SupplierRegister(),
        '/supplier_login': (context) => const SupplierLogin(),
      },
    );
  }
}
