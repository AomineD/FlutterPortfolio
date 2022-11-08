import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';
import 'package:portfolio_app/model/model.dart';
import 'package:portfolio_app/theme/app_theme.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          const TitleWidget("Projects", "projects.png",
              alternativeColor: false),
          ListCardDynamic(DynamicWidget<List<ProjectModel>, ProjectModel>(
            Config.projects,
            (experiences) => _CardContent(experiences),
          ))
        ],
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  final ProjectModel projectModel;
  const _CardContent(this.projectModel, {Key? key}) : super(key: key);

  Future<void> _launch(String urr) async {
    final url = Uri.parse(urr);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            projectModel.title,
            style: theme.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: theme.primaryColor),
          ),
          const SizedBox(height: 10),
          Text(
            projectModel.description,
            style: theme.textTheme.subtitle1!,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              if (projectModel.githubUrl != null)
                Card(
                    color: theme.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: IconButton(
                        icon: Image.asset("assets/github.png"),
                        iconSize: 16,
                        onPressed: () => _launch(projectModel.githubUrl!),
                      ),
                    )),
              if (projectModel.projectUrl != null)
                TextButton.icon(
                  style: AppTheme.demoBtnStyle,
                  icon: Image.asset(
                    "assets/arrow_right.png",
                    width: 16,
                    height: 16,
                    color: theme.backgroundColor,
                  ),
                  onPressed: () => _launch(projectModel.projectUrl!),
                  label: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("DEMO"),
                  ),
                ),
            ],
          )
        ]);
  }
}
