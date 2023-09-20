import 'package:ecommerce_flutter/constants/theme.dart';
import 'package:ecommerce_flutter/screens/auth_ui/login/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dd Bahini Creations',
      theme: themeData,
      home: const Welcome(),
    );
  }
}
