import 'package:flutter/material.dart';

class SevenDaysBG extends StatelessWidget {
  const SevenDaysBG({
    Key? key,
    required this.size,
    this.navBar,
    // required 
    this.child
  }) : super(key: key);

  final Size size;
  final Widget ? child, navBar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
         navBar!,
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/circleBG.png',
              height: size.height * 0.635,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/wavyBG.png',
              height: size.height * 0.58,
              fit: BoxFit.cover,
            ),
          ),
         child!
        ],
      ),
    );
  }
}
