import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';

// ignore: camel_case_types
class Menu_Item extends StatelessWidget {
  final String text;
  final bool inDrawer;
  const Menu_Item({required this.text, required this.inDrawer, super.key});

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
            style:  TextStyle(
                fontFamily: fontFamily, fontSize: 15, color: inDrawer? textPrimaryDark : textPrimaryLight),
          ),
        ),
      ),
    );
  }
}
