import 'package:flutter/material.dart';
import 'package:flutter_profile/file_downloader.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => downloadFile(),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding,
        ),
        backgroundColor: primaryColor,
      ),
      child: FittedBox(
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/download.svg",
              color: darkColor,
            ),
            SizedBox(width: defaultPadding / 2),
            Text(
              "Download Résumé",
              style: TextStyle(
                color: darkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
