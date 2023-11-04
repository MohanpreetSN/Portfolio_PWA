import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import '../../../responsive.dart';

class ProjectDialog extends StatelessWidget {
  const ProjectDialog({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Center(
      child: AnimatedContainer(
        constraints: BoxConstraints(
          minWidth: 100.0,
          maxWidth: Responsive.giveNumber(
            context: context,
            mobile: _size.width * 0.75,
            mobileLarge: _size.width * 0.8,
            tablet: 450,
            desktop: 550,
          ),
        ),
        duration: const Duration(milliseconds: 200),
        // height: 200,
        // width: 400,
        padding: const EdgeInsets.all(defaultPadding),
        margin: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              project.title!,
              //textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            DefaultTextStyle(
              style: TextStyle(fontSize: 18, color: bodyTextColor),
              child: Text(
                project.description!,
                // maxLines: ((Responsive.isDesktop(context) && MediaQuery.of(context).size.width < 1070) || Responsive.isMobileLarge(context))
                //     ? 3
                //     : 4,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            TextButton(
              onPressed: () => _launchUrl(project.link),
              child: Text(
                "Explore >>",
                style: TextStyle(color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(urlString) async {
  final Uri _url = Uri.parse(urlString);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
