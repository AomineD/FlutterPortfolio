import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';
import 'package:portfolio_app/theme/app_theme.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(children: [_BackgroundWidget(), _Body()]));
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_InfoWidget(), AnimationWidget("dev_animation")],
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            Config.titleMainPage,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            Config.yourInfoMainPage,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 45,
          ),
          _SocialsButton(),
          SizedBox(
            height: 20,
          ),
          _ResumeButton()
        ],
      ),
    );
  }
}

class _ResumeButton extends StatefulWidget {
  const _ResumeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<_ResumeButton> createState() => _ResumeButtonState();
}

class _ResumeButtonState extends State<_ResumeButton> {
  double sizeY = 50;
  double sizeX = 220;

  void _updateSize(bool value) {
    setState(() {
      sizeX = value ? 230 : 220;
      sizeY = value ? 55 : 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 250),
      child: SizedBox(
        width: sizeX,
        height: sizeY,
        child: TextButton.icon(
            onHover: (value) => _updateSize(value),
            style: AppTheme.resumeBtnStyle2,
            // ignore: prefer_const_constructors
            icon: Icon(Icons.note_add_sharp),
            onPressed: () async {
              final url = Uri.parse(Config.resumeUrl);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            // ignore: prefer_const_constructors
            label: Text(
              "SEE MY RESUME",
            )),
      ),
    );
  }
}

class _SocialsButton extends StatelessWidget {
  const _SocialsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sizeOfIcons = 36;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ActionItem("github.png", Config.githubUrl, sizeIcon: sizeOfIcons),
        ActionItem("linkedin.png", Config.linkedinUrl, sizeIcon: sizeOfIcons),
        ActionItem("twitter.png", Config.twitterUrl, sizeIcon: sizeOfIcons),
        ActionItem("gmail.png", Config.mailTo, sizeIcon: sizeOfIcons),
      ],
    );
  }
}

class _BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/background.jpg"),
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
