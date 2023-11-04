import 'package:flutter/material.dart';

import 'area_info.dart';

class AreaAge extends StatelessWidget {
  const AreaAge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AreaInfoText(
          title: "Age",
          text: "23",
        ),
        AreaInfoText(
          title: "Country",
          text: "Canada",
        ),
        AreaInfoText(
          title: "City",
          text: "Brampton",
        ),
      ],
    );
  }
}
