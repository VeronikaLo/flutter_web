import 'package:flutter/material.dart';

import '../../../constants.dart';

class CalltoActionButton extends StatelessWidget {
  // CalltoActionButton
  final String text;
  final Function callback;

  const CalltoActionButton(
      {required this.text, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          callback();
        },
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          child: IntrinsicWidth(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: primaryDark, width: 4),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 15,
                        color: primaryDark),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
