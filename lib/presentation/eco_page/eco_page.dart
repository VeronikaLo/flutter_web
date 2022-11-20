import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/page_wrapper/page_template.dart';
import 'package:flutter_web/presentation/eco_page/widgets/ecosystem.dart';

class EcoPage extends StatelessWidget {
  const EcoPage({super.key});

  @override
  Widget build(BuildContext context) {
  List<Widget> partblocks = const [
    EcoSystem(),
    
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