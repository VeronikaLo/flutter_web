import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class FlutterHomeLogo extends StatelessWidget {
  const FlutterHomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push('/home');
        },
        child: Image.asset('assets/images/flutter_logo_text.png',
        height: 37,
        fit: BoxFit.contain,),
      ),
    );
  }
}