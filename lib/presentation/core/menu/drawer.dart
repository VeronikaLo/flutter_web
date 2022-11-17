import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';
import 'package:flutter_web/presentation/core/buttons/get_started.dart';
import 'package:flutter_web/presentation/core/menu/flutter_home_logo.dart';

import 'menu_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20) ,
        child: Stack(
          children: [
            Column(
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

                const SizedBox(height: 40,),
                const Menu_Item(text: 'Docs', inDrawer: true, path: "",),
                const SizedBox(height: 20,),
                const Menu_Item(text: 'Showcase', inDrawer: true, path: ""),
                const SizedBox(height: 20,),
                const Menu_Item(text: 'Development', inDrawer: true, path: "/development"),
                const SizedBox(height: 20,),
                const Menu_Item(text: 'Ecosystem', inDrawer: true, path: "/ecosystem"),
              ],
            ),
            Column(
              children: const [
                Spacer(),
                GetStartedButton(inDrawer: true ,),
                SizedBox(height:20),
              ],)
          ],
        ) ,),
    );
  }
}