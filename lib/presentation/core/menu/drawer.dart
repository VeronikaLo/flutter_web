import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';
import 'package:flutter_web/presentation/core/menu/flutter_home_logo.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const FlutterHomeLogo(),
                const Spacer(),
                IconButton(
                  onPressed: () { Navigator.of(context).pop(); }, 
                  icon: const Icon(Icons.close, color: textPrimaryDark, size: 20,))
              ],),
          ],
        ) ,),
    );
  }
}