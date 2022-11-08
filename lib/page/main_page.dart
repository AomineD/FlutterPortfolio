import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';
import 'package:portfolio_app/widgets/ui_widget.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          Config.titlePage,
          style: GoogleFonts.getFont("Quicksand").copyWith(fontSize: 30),
        ),
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 1, 1, 1),
        actions: [
          ActionItem("github_only.png", Config.githubUrl),
          ActionItem("linkedin_only.png", Config.linkedinUrl),
          ActionItem("twitter_only.png", Config.twitterUrl)
        ],
      ),
      body: const UIWidget(),
    );
  }
  /*

appBar: AppBar(
        title: Text(
          Config.titlePage,
          style: GoogleFonts.getFont("Quicksand").copyWith(fontSize: 30),
        ),
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 1, 1, 1),
        actions: [
          ActionItem("github_only.png", Config.githubUrl),
          ActionItem("linkedin_only.png", Config.linkedinUrl),
          ActionItem("twitter_only.png", Config.twitterUrl)
        ],
      )

  */

}
