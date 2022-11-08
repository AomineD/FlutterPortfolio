import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';
import 'package:portfolio_app/model/model.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [_BackgroundWidget(), const _StackeableUI()],
      ),
    );
  }
}

class _StackeableUI extends StatelessWidget {
  const _StackeableUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          const TitleWidget("Experience", "work.png", alternativeColor: true),
          ListCardDynamic(DynamicWidget<List<ExperienceModel>, ExperienceModel>(
            Config.experiences,
            (experiences) => _CardContent(experiences),
          ))
        ],
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  final ExperienceModel experienceModel;
  const _CardContent(this.experienceModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: experienceModel.alternativeCardColor
                ? theme.primaryColor
                : theme.backgroundColor,
            elevation: 6,
            shape: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(
                icon: Image.asset("assets/${experienceModel.icon}"),
                iconSize: 40,
                onPressed: null,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            experienceModel.title,
            style: theme.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: theme.primaryColor),
          ),
          const SizedBox(height: 10),
          Text(
            experienceModel.positionInCompany,
            style: theme.textTheme.headline6!,
          ),
          const SizedBox(height: 10),
          Text(
            experienceModel.date,
            style: theme.textTheme.subtitle1,
          ),
          const SizedBox(height: 20),
          Text(
            experienceModel.desc,
            style: theme.textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ]);
  }
}

class _BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/background.jpg"),
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
