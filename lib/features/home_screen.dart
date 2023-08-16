import 'package:flutter/material.dart';
import 'package:hover_animation_flutter/custom_widget/focused_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FocusedText(text: "F"),
            FocusedText(text: "O"),
            FocusedText(text: "C"),
            FocusedText(text: "U"),
            FocusedText(text: "S"),
          ],
        ),
      ),
    );
  }
}
