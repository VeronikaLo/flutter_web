import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/page_wrapper/page_template.dart';
import 'package:flutter_web/presentation/home_page/widgets/dev_experience.dart';
import 'package:flutter_web/presentation/home_page/widgets/multi_plattform.dart';

import '../core/page_wrapper/centered_constrained_wrapper.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  List<Widget> partblocks = const [
    CenteredConstrainedWrapper(child: MultiPlattform()),
    CenteredConstrainedWrapper(child: DevExperience()),
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