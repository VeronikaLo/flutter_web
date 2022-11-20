

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';
import '../../core/page_wrapper/centered_constrained_wrapper.dart';

class EcoSystem extends StatelessWidget {
  const EcoSystem({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveValue =
        ResponsiveWrapper.of(context); // Zugang zum responsive breakpoints
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Colors.pink[50]!, Colors.white],
        ),
      ),
      child: CenteredConstrainedWrapper(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumn(
            columnVerticalDirection: VerticalDirection.up,
            columnMainAxisSize: MainAxisSize.min,
            layout: responsiveValue.isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: Text(
                      'A strong ecosystem, powered by open source',
                      textAlign: responsiveValue.isSmallerThan(DESKTOP)? TextAlign.center : TextAlign.start,
                      style: TextStyle(
                          fontFamily: fontFamily,
                          color: textPrimaryLight,
                          height: 0.9,
                          fontWeight: FontWeight.bold,
                          fontSize:
                              responsiveValue.isSmallerThan(DESKTOP) ? 40 : 75),
                    ),
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: responsiveValue.equals(TABLET) ? 120 : 50),
                    child: Image.asset('assets/images/ecosystem.png'),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Text(
              "From packages and plugins to friendly developers, find all of the resources you need to be successful with Flutter.",
              style: TextStyle(
                  color: textPrimaryLight,
                  fontFamily: fontFamily,
                  fontSize: responsiveValue.isLargerThan(TABLET) ? 38 : 22),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}