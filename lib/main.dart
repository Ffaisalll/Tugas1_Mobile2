import 'package:flutter/material.dart';
import 'package:tugas1/donatdetail.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/": (context) =>Homepage(),
        "detaildonat": (context) => detaildonat()
      },
    );
  }
}
