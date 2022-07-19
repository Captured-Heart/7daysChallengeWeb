import 'package:flutter/material.dart';
import 'package:seven_days_web/Presentation/Widgets/left_side_widget.dart';
import 'package:seven_days_web/src/utils/responsive.dart';

class SevenDaysBG extends StatelessWidget {
  const SevenDaysBG(
      {Key? key,
      required this.size,
      this.navBar,
      // required
      this.child})
      : super(key: key);

  final Size size;
  final Widget? child, navBar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        // fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/circleBG.png',
              height: Responsive.isMobile(context)
                  ? size.height * 0.35
                  : size.height * 0.635,
              fit: BoxFit.cover,
              color: Theme.of(context).canvasColor,
            ),
          ),
          Responsive.isMobile(context)
              ? LeftSideBarContent(size: size)
              : SizedBox(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/wavyBG.png',
              height: Responsive.isMobile(context)
                  ? size.height * 0.45
                  : size.height * 0.58,
              fit: Responsive.isMobile(context) ? BoxFit.fill : BoxFit.cover,
              color: Theme.of(context).canvasColor,
            ),
          ),
          child!,
          navBar!,
        ],
      ),
    );
  }
}
