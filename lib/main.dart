import 'package:flutter/material.dart';
import 'package:foodie_flutter/pages/splash/splash_page.dart';
// import 'package:foodie_flutter/pages/payment/payment_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: const SplashPage(),
    );
  }
}
