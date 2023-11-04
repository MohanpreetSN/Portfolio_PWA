import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'area_age.dart';
import 'area_info.dart';
import 'coding.dart';
import 'download_resume.dart';
import 'knowledge.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                controller: ScrollController(),
                primary: false,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaAge(),
                    DownloadResume(),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledge(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
