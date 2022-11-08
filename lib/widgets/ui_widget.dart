import 'package:flutter/material.dart';
import 'package:portfolio_app/sections/sections.dart';

class UIWidget extends StatelessWidget {
  const UIWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          MainWidget(),
          SkillsWidget(),
          ExperienceWidget(),
          ProjectsWidget()
        ],
      ),
    );
  }
}
