
import 'package:clg_project/firebase_options.dart';
import 'package:clg_project/pages/auth_page.dart';
import 'package:clg_project/pages/main-screen.dart';
import 'package:clg_project/pages/addtocart.dart';
import 'package:clg_project/pages/login_or_register.dart';
import 'package:clg_project/pages/orderdetail_page.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MainApp(
      Addtocart: null,
      addToCart: (cartItem) {},
      cartItems: [],
    ),
  );
}

class MainApp extends StatefulWidget {
  final Function(cartItem) addToCart;
  final List<cartItem> cartItems;
  const MainApp(
      {super.key,
      required Addtocart,
      required this.addToCart,
      required this.cartItems});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AuthPage(),
        ),
      ),
    );
  }
}
