import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/menu/menu_bar.dart';

import '../../../constants.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 66) ,
        child: MenuBar(),
        ),
      body: child,
    );
  }
}