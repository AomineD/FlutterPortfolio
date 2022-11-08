import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String imageFile;
  final String title;
  final bool alternativeColor;
  const TitleWidget(this.title, this.imageFile,
      {Key? key, required this.alternativeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Color alterOf =
        alternativeColor ? theme.backgroundColor : theme.primaryColor;

    return Container(
      margin: const EdgeInsets.only(left: 50, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            color: theme.backgroundColor,
            elevation: 6,
            shape: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(
                icon: Image.asset("assets/$imageFile"),
                iconSize: 24,
                onPressed: null,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Text(title,
              style: theme.textTheme.headline3!.copyWith(color: alterOf)),
        ],
      ),
    );
  }
}
