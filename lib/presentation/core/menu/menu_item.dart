import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:routemaster/routemaster.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key? key,
      required this.text,
      required this.inDrawer,
      required this.path})
      : super(key: key);
  final String text;
  final String path;
  final bool inDrawer;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(path);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontFamily: fontFamily,
              color: inDrawer ? textPrimaryDark : textPrimaryLight,
            ),
          ),
        ),
      ),
    );
  }
}
