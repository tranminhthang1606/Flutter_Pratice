import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  const TextComponent({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
  });

  // final String text;
  //  const TextComponent(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color ?? Colors.black, fontSize: fontSize ?? 30),
    );
  }
}
