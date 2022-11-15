import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/buttons/get_started.dart';
import 'package:flutter_web/presentation/core/menu/flutter_home_logo.dart';
import 'menu_item.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color:Colors.black,
            offset: Offset(0,2),
            blurRadius: 4, ),
        ],
      ),
      child: Row(
        children: const[
          FlutterHomeLogo(),
          Spacer(),
          Menu_Item(text: 'Docs', inDrawer: false,),
          Menu_Item(text: 'Showcase', inDrawer: false,),
          Menu_Item(text: 'Development', inDrawer: false,),
          Menu_Item(text: 'Ecosystem', inDrawer: false,),
          GetStartedButton( inDrawer: false,),
        ]),
    );
  }
}