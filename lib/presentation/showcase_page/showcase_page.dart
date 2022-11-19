import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/page_wrapper/page_template.dart';

import '../../constants.dart';

// will be developed

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate( child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      child: const Text('Under construction',
      textAlign: TextAlign.center, 
      style: TextStyle(fontSize: 50, fontFamily: fontFamily, fontWeight: FontWeight.bold),),),);
  }
}