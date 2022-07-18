import 'package:flutter/material.dart';

class LeftSideBarContent extends StatelessWidget {
  const LeftSideBarContent({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Positioned(
          top: size.height * 0.12,
          left: size.width * 0.02,
          child: Image.asset(
            'assets/images/UI.png',
            height: size.height * 0.15,
            fit: BoxFit.contain,
            color: Theme.of(context).highlightColor.withOpacity(0.3),
          ),
        ),
        Positioned(
          bottom: size.height * 0.086,
          left: size.width * 0.02,
          child: Image.asset(
            'assets/images/Code.png',
            height: size.height * 0.5,
            fit: BoxFit.contain,
            color: Theme.of(context).highlightColor.withOpacity(0.8),
          ),
        ),
        Positioned(
          top: size.height * 0.24,
          left: size.width * 0.04,
          child: Image.asset(
            'assets/images/vs.png',
            height: size.height * 0.19,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
