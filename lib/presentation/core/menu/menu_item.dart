import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';

class Menu_Item extends StatelessWidget {
  final String text;
  const Menu_Item({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print('item tapped');
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: fontFamily, fontSize: 15, color: textPrimaryLight),
          ),
        ),
      ),
    );
  }
}
