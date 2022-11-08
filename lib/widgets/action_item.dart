import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';

class ActionItem extends StatefulWidget {
  final String urlTo;
  final String assetName;
  double? sizeIcon = 24;
  ActionItem(this.assetName, this.urlTo, {Key? key, this.sizeIcon})
      : super(key: key);

  @override
  State<ActionItem> createState() => _ActionItemState();
}

class _ActionItemState extends State<ActionItem> {
  double? finalSize = 0;
  void _updateSize(bool value) {
    if (widget.sizeIcon == null) {
      return;
    }
    setState(() {
      finalSize = value ? (widget.sizeIcon! + 5) : widget.sizeIcon;
    });
  }

  @override
  void initState() {
    super.initState();
    finalSize = widget.sizeIcon;
  }

  Future<void> _launch() async {
    final url = Uri.parse(widget.urlTo);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: MouseRegion(
          onEnter: (event) => _updateSize(true),
          onExit: (event) => _updateSize(false),
          child: IconButton(
              iconSize: finalSize,
              onPressed: _launch,
              icon: Image.asset("assets/${widget.assetName}")),
        ),
      ),
    );
  }
}
