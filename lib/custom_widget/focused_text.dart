import 'package:flutter/material.dart';

class FocusedText extends StatefulWidget {
  const FocusedText({super.key, required this.text});

  final String text;

  @override
  State<FocusedText> createState() => _FocusedTextState();
}

class _FocusedTextState extends State<FocusedText> {
  bool onEnter = false;

  void hover(bool value) {
    setState(() {
      onEnter = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(alignment: AlignmentDirectional.center, children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          hoverColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: onEnter ? Colors.transparent : Colors.black,
                  blurRadius: 20,
                  blurStyle: BlurStyle.inner)
            ]),
            width: 90,
            height: 90,
          ),
          onTap: () {},
          onHover: (value) => hover(value),
        ),
      ]),
    );
  }
}
