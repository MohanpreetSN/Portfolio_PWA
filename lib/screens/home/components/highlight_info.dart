import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'highlight.dart';

class HighlightInfo extends StatelessWidget {
  const HighlightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(val: 3, text: "+", label: "Years of Experience"),
                    HighLight(val: 10, text: "+", label: "Projects"),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(val: 3, text: "", label: "APIs"),
                    HighLight(val: 2, text: "", label: "Original UI Designs"),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(val: 3, text: "+", label: "Years of Experience"),
                HighLight(val: 10, text: "+", label: "Projects"),
                HighLight(val: 3, text: "", label: "APIs"),
                HighLight(val: 2, text: "", label: "Original UI Designs"),
                //const SizedBox(width: defaultPadding),
              ],
            ),
    );
  }
}
