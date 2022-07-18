import 'package:flutter/material.dart';

import 'dashed_lines.dart';

class DesktopNavBar3 extends StatelessWidget {
  const DesktopNavBar3({Key? key, required this.size, required this.navTitle})
      : super(key: key);

  final Size size;
  final Widget navTitle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      left: 0,
      right: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DashedLines(
            direction: Axis.horizontal,
            color: IconTheme.of(context).color!,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.15, bottom: 10, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                navTitle,
              ],
            ),
          ),
          DashedLines(
            direction: Axis.horizontal,
            color: IconTheme.of(context).color!,
          ),
        ],
      ),
    );
  }
}
