import 'package:coffee_application/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      color: const Color(0xfff4f5f7),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyhomePage(),
      },
    ),
  );
}
