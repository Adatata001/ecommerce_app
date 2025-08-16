import 'package:flutter/material.dart';
import 'package:ecommerceapp/theme/app_theme.dart';
import 'package:ecommerceapp/screens/home.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}