import 'package:flutter/material.dart';

class FlutterHomeLogo extends StatelessWidget {
  const FlutterHomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print('logo tapped');
        },
        child: Image.asset('assets/images/flutter_logo_text.png',
        height: 37,
        fit: BoxFit.contain,),
      ),
    );
  }
}