import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_counter.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.val,
    this.text,
    required this.label,
  }) : super(key: key);

  final int val;
  final String? text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedCounter(
          val: val,
          text: text,
        ),
        SizedBox(width: defaultPadding / 2),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
