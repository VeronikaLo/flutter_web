import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/page_wrapper/page_template.dart';

import 'widgets/dev_start.dart';

class DevPage extends StatelessWidget {
  const DevPage({super.key});

/*
  @override
  Widget build(BuildContext context) {
    return PageTemplate( child: Container( color: Colors.red),);
  }
*/

  @override
  Widget build(BuildContext context) {
  List<Widget> partblocks = const [
    DevStart(),
    
  ];

    return  PageTemplate(
      child: ListView.builder(
        itemCount: partblocks.length,
        itemBuilder: ((context, index) {
          return partblocks[index];
        })
        
        ),);
  }

}