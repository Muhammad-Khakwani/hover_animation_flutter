import 'package:flutter/material.dart';
import 'package:hover_animation_flutter/features/home_screen.dart';

void main() {
  runApp(const HoverApp());
}

class HoverApp extends StatelessWidget {
  const HoverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hover',
      theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.dark,
              primary: Colors.black,
              onPrimary: Colors.white,
              secondary: Colors.black,
              onSecondary: Colors.white,
              error: Colors.redAccent,
              onError: Colors.blueAccent,
              background: Colors.black,
              onBackground: Colors.white,
              surface: Colors.black,
              onSurface: Colors.white),
          useMaterial3: true),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
