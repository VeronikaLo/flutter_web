import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';
import 'package:flutter_web/presentation/core/page_wrapper/centered_constrained_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DevStart extends StatelessWidget {
  const DevStart({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveValue =
        ResponsiveWrapper.of(context); // Zugang zum responsive breakpoints
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.teal[100]!],
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
                      'Build more with Flutter',
                      textAlign: TextAlign.center,
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
                    child: Image.asset('assets/images/development.png'),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
