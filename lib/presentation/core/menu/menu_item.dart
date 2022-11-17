import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';
import 'package:routemaster/routemaster.dart';

// ignore: camel_case_types
class Menu_Item extends StatelessWidget {
  final String text;
  final String path;
  final bool inDrawer;
  const Menu_Item({required this.text, required this.inDrawer, required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(path);
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
