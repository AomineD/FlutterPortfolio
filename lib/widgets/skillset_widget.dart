import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_app/model/model.dart';
import 'package:portfolio_app/widgets/widgets.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SkillSetWidget extends StatefulWidget {
  final SkillSetModel skillSetModel;

  const SkillSetWidget(this.skillSetModel, {Key? key}) : super(key: key);

  @override
  State<SkillSetWidget> createState() => _SkillSetWidgetState();
}

class _SkillSetWidgetState extends State<SkillSetWidget> {
  double opacityOn = 0;
  bool opacitted = false;

  onChangeVisbility(VisibilityInfo info) {
    if (opacitted) {
      return;
    }
    final visiblePercentage = info.visibleFraction * 100;

    if (visiblePercentage > 1) {
      opacitted = true;
      timer = Timer.periodic(
          const Duration(milliseconds: 150), (Timer t) => incrementOpacity());
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      onVisibilityChanged: onChangeVisbility,
      key: Key(widget.skillSetModel.title),
      child: AnimatedOpacity(
        opacity: opacityOn,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
        child: Container(
          margin:
              const EdgeInsets.only(top: 80, bottom: 20, left: 60, right: 60),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimationWidget(widget.skillSetModel.jsonAnim),
              _SkillsInfo(widget.skillSetModel)
            ],
          ),
        ),
      ),
    );
  }

  Timer? timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  incrementOpacity() {
    if (opacityOn < 1) {
      opacityOn += 0.2;
      if (opacityOn > 1) {
        opacityOn = 1;
      }
      setState(() {});
    } else {
      timer?.cancel();
    }
  }
}

class _SkillsInfo extends StatelessWidget {
  final SkillSetModel skillSetModel;
  const _SkillsInfo(this.skillSetModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(left: 30),
      width: size.width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            skillSetModel.title,
            style: theme.textTheme.headline4,
          ),
          const SizedBox(height: 30),
          _RowIcons(skillSetModel.icons),
          const SizedBox(height: 30),
          Column(
              children: skillSetModel.lines
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(e, style: theme.textTheme.bodyText1),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}

class _RowIcons extends StatelessWidget {
  final List<String> iconsTech;
  const _RowIcons(this.iconsTech, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: iconsTech
          .map((e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CardCircularSkill(e),
              ))
          .toList(),
    );
  }
}
