import 'package:flutter/material.dart';

import '../../constants.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
        'Flutter Web', 
        style: TextStyle(fontFamily: fontFamily),),),
      body: child,
    );
  }
}