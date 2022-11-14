import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print('get started pressed');
        },
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: primaryDark,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontFamily: fontFamily, fontSize: 15, color: textPrimaryDark),
                )),
          ),
        ),
      ),
    );
  }
}
