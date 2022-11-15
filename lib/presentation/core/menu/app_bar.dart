import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/menu/flutter_home_logo.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: textPrimaryLight),
      backgroundColor: bg,
      title: Row(children: const[
        FlutterHomeLogo(),
      ]),
    );
  }
}