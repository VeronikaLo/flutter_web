import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/menu/app_bar.dart';
import 'package:flutter_web/presentation/core/menu/menu_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';
import '../menu/drawer.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);
    return Scaffold(
      endDrawer: const CustomDrawer(),
      backgroundColor: bg,
      appBar: responsiveValue.isSmallerThan(DESKTOP)
      ? const PreferredSize(      // just "normal" appBar
        preferredSize: Size(double.infinity,60),  
        child: CustomAppBar()
        )
      : const PreferredSize(      // appBar for size > DESKTOP
        preferredSize: Size(double.infinity, 66) ,
        child: MenuBar(),
        ),
      body: child,
    );
  }
}