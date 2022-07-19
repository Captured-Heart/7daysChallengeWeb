import 'package:flutter/material.dart';
import 'package:seven_days_web/src/utils/responsive.dart';

class LeftSideBarContent extends StatelessWidget {
  const LeftSideBarContent({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Positioned(
          top: isMobile? size.height * 0.38 : size.height * 0.12,
          left: isMobile ? size.width * 0.42:  size.width * 0.02,
          child: Image.asset(
            'assets/images/UI.png',
            height: isMobile ? size.height * 0.085:  size.height * 0.15,
            fit: BoxFit.contain,
            color: Theme.of(context).highlightColor.withOpacity(0.3),
          ),
        ),
        Positioned(
          bottom: isMobile ? size.height * 0.1:  size.height * 0.086,
          left: isMobile ? size.width * 0.43:  size.width * 0.02,
          child: Image.asset(
            'assets/images/Code.png',
            height: isMobile ? size.height* 0.25 : size.height * 0.5,
            fit: BoxFit.contain,
            color: Theme.of(context).highlightColor.withOpacity(0.8),
          ),
        ),
        Positioned(
          top: isMobile ? size.height * 0.48 : size.height * 0.24,
          left: isMobile ? size.width * 0.45: size.width * 0.04,
          child: Image.asset(
            'assets/images/vs.png',
            height: isMobile ? size.height * 0.12:  size.height * 0.19,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
