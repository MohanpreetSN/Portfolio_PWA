import 'package:flutter/material.dart';

import '../../../constants.dart';

class FlutterColoredText extends StatelessWidget {
  const FlutterColoredText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
