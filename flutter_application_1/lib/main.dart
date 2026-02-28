import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const DreamTravelApp());
}

class DreamTravelApp extends StatelessWidget {
  const DreamTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dream Travel",
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 79, 143, 195),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const HomePage(),
    );
  }
}