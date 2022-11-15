import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';

class MultiPlattform extends StatelessWidget {
  const MultiPlattform({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(
        context); //defines the modus (Mobile, Desktop, Tablet)

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: bg),
      child: ResponsiveRowColumn(
          // flexible layout
          rowCrossAxisAlignment: CrossAxisAlignment
              .center, // can be chosen between row/column Axis Alignments
          layout: responsiveValue.isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    Text(
                      'Multi-Plattform',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: fontFamily,
                          fontSize: responsiveValue.isLargerThan(TABLET)?  20 : 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Reach users on every screen',
                      style: TextStyle(
                          color: textPrimaryLight,
                          fontFamily: fontFamily,
                          fontSize: responsiveValue.isLargerThan(TABLET)? 60 : 40,
                          height: 0.9,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Deploy to multiple devices from a single codebase: mobile, web, desktop, and embedded devices',
                      style: TextStyle(
                        color: textPrimaryLight,
                        fontFamily: fontFamily,
                        fontSize: responsiveValue.isLargerThan(TABLET)?  20 : 18,
                      ),
                    ),
                  ]),
            ),

            //ResponsiveRowColumnItem( rowFlex: 1,child: child,),
          ]),
    );
  }
}
