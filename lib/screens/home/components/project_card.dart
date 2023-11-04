import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/project_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import '../../../responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  void openSignInDialog(BuildContext context) {
    print("clicked");
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Sign In",
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeInOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
          //child: Opacity(opacity: a1.value, child: const SignInDialog2()),
          child: Opacity(opacity: a1.value, child: ProjectDialog(project: project)),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) => Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openSignInDialog(context),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              //textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Spacer(),
            Text(
              project.description!,
              maxLines: ((Responsive.isDesktop(context) && MediaQuery.of(context).size.width < 1070) || Responsive.isMobileLarge(context))
                  ? 3
                  : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
            Spacer(),
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
