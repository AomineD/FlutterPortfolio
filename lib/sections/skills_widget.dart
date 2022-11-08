import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';
import 'package:portfolio_app/theme/app_theme.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: [
          Text("What i do",
              style: theme.textTheme.headline3!
                  .copyWith(color: theme.primaryColor)),
          const SizedBox(
            height: 20,
          ),
          Text(Config.subtitleWhatIDo,
              style: theme.textTheme.headline5!
                  .copyWith(color: AppTheme.subtitleColor)),
          const SkillSetWidget(Config.skillSet1),
          const SkillSetWidget(Config.skillSet2),
          const SkillSetWidget(Config.skillSet3),
        ],
      ),
    );
  }
}
