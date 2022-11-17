import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/core/page_wrapper/page_template.dart';

class EcoPage extends StatelessWidget {
  const EcoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate( child: Container( color: Colors.green),);
  }
}