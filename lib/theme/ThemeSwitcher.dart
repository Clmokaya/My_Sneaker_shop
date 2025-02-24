import 'package:flutter/material.dart';

class Themeswitcher extends StatefulWidget {
  const Themeswitcher({super.key});

  @override
  State<Themeswitcher> createState() => _ThemeswitcherState();
}

class _ThemeswitcherState extends State<Themeswitcher> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('Theme mode'), Icon(Icons.toggle_off)],
    );
  }
}
