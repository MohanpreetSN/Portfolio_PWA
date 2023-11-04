import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_linear.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          label: "Dart",
          value: 0.8,
        ),
        AnimatedLinearProgressIndicator(
          label: "Python",
          value: 0.75,
        ),
        AnimatedLinearProgressIndicator(
          label: "PySpark",
          value: 0.6,
        ),
        AnimatedLinearProgressIndicator(
          label: "C++",
          value: 0.7,
        ),
        AnimatedLinearProgressIndicator(
          label: "SQL",
          value: 0.75,
        ),
        AnimatedLinearProgressIndicator(
          label: "Django",
          value: 0.7,
        )
      ],
    );
  }
}
