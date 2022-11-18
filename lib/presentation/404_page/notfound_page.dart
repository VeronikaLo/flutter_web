import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';
import 'package:flutter_web/presentation/core/buttons/cta_button.dart';
import 'package:flutter_web/presentation/core/page_wrapper/centered_constrained_wrapper.dart';
import 'package:flutter_web/presentation/core/page_wrapper/page_template.dart';
import 'package:routemaster/routemaster.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: ListView(
        children: [
          CenteredConstrainedWrapper(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sorry, we couldn't find that page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "404",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                    color: textPrimaryLight,
                    fontSize: 60,
                  ),
                ),
                ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 350),
                    child: Image.asset('assets/images/mixer.png')),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "But maybe you find help starting back from the  homepage",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                    color: textPrimaryLight,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CalltoActionButton(
                  text: 'Back to homepage',
                  callback: () => Routemaster.of(context).push('/'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
